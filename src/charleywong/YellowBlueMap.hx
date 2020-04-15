package charleywong;

import js.html.URL;
import js.lib.Promise;
import haxe.*;
import sys.io.File;
import js.npm.google_spreadsheet.GoogleSpreadsheet;
import charleywong.GoogleServiceAccount.googleServiceAccount;
import charleywong.UrlExtractors.*;
import charleywong.ServerMain.*;
using Lambda;
using Reflect;
using StringTools;

enum abstract YBMapColor(String) to String {
    var Yellow;
    var Blue;
    var Green;
}

typedef YBMapData = {
    id:String,

    name:String,

    website:Null<String>,
    facebook:Null<String>,
    instagram:Null<String>,
    openrice:Null<String>,

    color:YBMapColor,
    category:Null<String>,
    subcategory:Null<String>,

    area:Null<String>,
    lat:Null<Float>,
    lng:Null<Float>,
    address:Null<String>,

    reason:Null<String>,
    source:Null<String>,
}

enum abstract YBMapSheet(String) to String {
    var YellowEat = "Eat (黃)";
    var YellowShop = "Shop (黃)";
    var BlueEat = "Eat (藍)";
    var BlueShop = "Shop (藍)";
    var GreenEatShop = "Eat/Shop (綠)";
}

typedef YBMapDump = DynamicAccess<YBMapData>;

class YellowBlueMap {
    static final sheetId = "1fKW2yldIQNTuRM6-DbrAvyNbQC5Gd0WqEW99q6Zb-Og";
    static final doc = new GoogleSpreadsheet(sheetId);
    static final localCacheFile = "YellowBlueMap.json";

    static public var localCache(get, null):YBMapDump;
    static function get_localCache() return localCache != null ? localCache : localCache = Json.parse(File.getContent(localCacheFile));

    static function strCol(row:Dynamic, colName:String):Null<String> {
        return switch (row.field(colName)) {
            case null:
                throw '$colName not found in $row';
            case v:
                switch (StringTools.trim(v)) {
                    case "" | "/":
                        null;
                    case v:
                        v;
                }
        }
    }

    static function floatCol(row:Dynamic, colName:String):Null<Float> {
        return switch (row.field(colName)) {
            case null:
                throw '$colName not found in $row';
            case "":
                null;
            case v:
                Std.parseFloat(v);
        }
    }

    static function goodStatus(row:Dynamic, colName:String):Bool {
        return switch (strCol(row, colName)) {
            case "Marked" | "Updated":
                true;
            case "Removed" | "Changed colour" | "Duplicated" | "Old" | "Hold" | null:
                false;
            case status:
                trace('Unknown status "$status"');
                true;
        }
    }

    final data:YBMapDump;
    public function new(dump):Void {
        data = dump;
    }

    static function dumpToFile() {
        var yEat = switch (doc.sheetsByIndex.find(s -> s.title == YellowEat)) {
            case null:
                throw 'Missing sheet ${YellowEat}';
            case sheet:
                sheet.getRows().then(rows -> [
                    for (row in rows)
                    if (goodStatus(row, "Map Status (Marked/Removed/Changed colour)"))
                    {
                        id: strCol(row, "ID"),
                        name: strCol(row, "店名"),

                        website: strCol(row, "網址"),
                        facebook: strCol(row, "Facebook"),
                        instagram: strCol(row, "Instagram"),
                        openrice: strCol(row, "Openrice"),

                        color: Yellow,
                        category: strCol(row, "類別"),
                        subcategory: null,

                        area: strCol(row, "分區"),
                        lat: floatCol(row, "Lat"),
                        lng: floatCol(row, "Lng"),
                        address: strCol(row, "地址"),

                        reason: strCol(row, "原因"),
                        source: strCol(row, "Source"),
                    }
                ]);
        }
        var yShop = switch (doc.sheetsByIndex.find(s -> s.title == YellowShop)) {
            case null:
                throw 'Missing sheet ${YellowShop}';
            case sheet:
                sheet.getRows().then(rows -> [
                    for (row in rows)
                    if (goodStatus(row, "Map Status (Marked/ Removed/Changed colour)"))
                    {
                        id: strCol(row, "ID"),
                        name: strCol(row, "店名"),

                        website: strCol(row, "網址/電郵"),
                        facebook: strCol(row, "Facebook"),
                        instagram: strCol(row, "Instagram"),
                        openrice: null,

                        color: Yellow,
                        category: strCol(row, "大類別"),
                        subcategory: strCol(row, "詳細分類"),

                        area: strCol(row, "分區"),
                        lat: floatCol(row, "Lat"),
                        lng: floatCol(row, "Lng"),
                        address: strCol(row, "地址"),

                        reason: strCol(row, "原因"),
                        source: strCol(row, "Source"),
                    }
                ]);
        }
        Promise.all([yEat, yShop])
            .then(sheets -> {
                var data:YBMapDump = {};
                for (sheet in sheets)
                for (d in (sheet:Array<YBMapData>))
                data[d.id] = d;
                data;
            })
            .then(data -> File.saveContent(localCacheFile, Json.stringify(data, null, "  ")));
    }

    static function urls(v:String):Array<Promise<Null<String>>> {
        var isShortUrl = ~/^https?:\/\/(?:bit\.do|bit\.ly)\//;
        var urls = if (v.contains(",")) {
            ~/,/g.split(v).map(StringTools.trim);
        } else if (v.contains(" ")) {
            ~/ +/g.split(v).map(StringTools.trim);
        } else if (v.contains("\n")) {
            ~/\n/g.split(v).map(StringTools.trim);
        } else {
            [v];
        }
        return urls.map(url ->
            if (!url.startsWith("http"))
                "https://" + url
            else 
                url
        ).map(url ->
            if (isShortUrl.match(url)) {
                followRedirect(url).catchError(err -> {
                    trace('Could not handle $url. Error: $err');
                    null;
                });
            } else {
                Promise.resolve(url);
            }
        );
    }

    static function matchYBMapWithCharley(d:YBMapData):Promise<Array<Entity>> {
        var entities:Array<Promise<Null<Entity>>> = [];
        if (d.facebook != null) {
            for (url in urls(d.facebook)) {
                entities.push(url.then(url -> {
                    if (url == null)
                        null;
                    else
                        switch (new URL(url)) {
                            case extractFbUrl(_) => fb if (fb != null):
                                entityIndex.entitiesOfFbPage[fb];
                            case url:
                                trace('${d.name} (${d.id}) has a Facebook field value not a fb url? ${url}');
                                null;
                        }
                }));
            }
        }

        if (d.instagram != null) {
            var urls = urls(d.instagram);
            for (url in urls) {
                entities.push(url.then(url -> {
                    if (url == null)
                        null;
                    else
                        switch (new URL(url)) {
                            case extractIgProfilePage(_) => ig if (ig != null):
                                entityIndex.entitiesOfUrl['https://www.instagram.com/$ig/'];
                            case url:
                                trace('${d.name} (${d.id}) has a Instagram field value not a ig url? ${url}');
                                null;
                        }
                }));
            }
        }

        return Promise.all(entities).then(entities ->
            [
                for (e in (cast entities:Array<Null<Entity>>))
                if (e != null)
                e.id => e
            ].array()
        );
    }

    // return not-mapped YBMapData
    static public function sync():Promise<Array<YBMapData>> {
        return Promise.all([
            for (d in localCache)
            matchYBMapWithCharley(d)
                .then(entities ->
                    if (entities.length == 0) {
                        d;
                    } else {
                        for (e in entities) {
                            switch (e.yellowBlueMapIds) {
                                case null:
                                    e.yellowBlueMapIds = [d.id];
                                    saveEntity(e, false, false);
                                case ids:
                                    if (!ids.has(d.id)) {
                                        ids.push(d.id);
                                        saveEntity(e, false, false);
                                    }
                            }
                        }
                        null;
                    }
                )
        ]).then(ds -> [
            for (d in (cast ds:Array<YBMapData>))
            if (d != null)
            d
        ]);
    }

    static public function dump() {
        return doc.useServiceAccountAuth(googleServiceAccount)
            .then(_ -> doc.loadInfo())
            .then(_ -> dumpToFile());
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["test"]:
                doc.useServiceAccountAuth(googleServiceAccount)
                    .then(_ -> doc.loadInfo())
                    .then(_ -> trace(doc.title));
            case ["dump"]:
                dump();
            case ["sync"]:
                sync();
            case args:
                throw 'unknown args $args';
        }
    }
}