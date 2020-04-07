package charleywong;

import js.lib.Promise;
import haxe.*;
import sys.io.File;
import js.npm.google_spreadsheet.GoogleSpreadsheet;
import charleywong.GoogleServiceAccount.googleServiceAccount;
using Lambda;
using Reflect;

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

enum abstract YBMSheet(String) to String {
    var YellowEat = "Eat (黃)";
    var YellowShop = "Shop (黃)";
    var BlueEat = "Eat (藍)";
    var BlueShop = "Shop (藍)";
    var GreenEatShop = "Eat/Shop (綠)";
}

typedef YellowBlueMapDump = Array<{title:String, rows:Array<DynamicAccess<String>>}>;

class YellowBlueMap {
    static final sheetId = "1fKW2yldIQNTuRM6-DbrAvyNbQC5Gd0WqEW99q6Zb-Og";
    static final doc = new GoogleSpreadsheet(sheetId);
    static final localCacheFile = "YellowBlueMap.json";

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
            case "Removed" | "Changed colour" | "Duplicated" | "Old" | null:
                false;
            case status:
                trace('Unknown status "$status"');
                false;
        }
    }

    final data:DynamicAccess<YBMapData>;
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
                var data:DynamicAccess<YBMapData> = {};
                for (sheet in sheets)
                for (d in (sheet:Array<YBMapData>))
                data[d.id] = d;
                data;
            })
            .then(data -> File.saveContent(localCacheFile, Json.stringify(data, null, "  ")));
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["test"]:
                doc.useServiceAccountAuth(googleServiceAccount)
                    .then(_ -> doc.loadInfo())
                    .then(_ -> trace(doc.title));
            case ["dump"]:
                doc.useServiceAccountAuth(googleServiceAccount)
                    .then(_ -> doc.loadInfo())
                    .then(_ -> dumpToFile());
            case args:
                throw 'unknown args $args';
        }
    }
}