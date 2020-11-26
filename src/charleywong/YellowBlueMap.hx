package charleywong;

import js.html.URL;
import js.lib.Promise;
import haxe.*;
import sys.io.File;
import charleywong.UrlExtractors.*;
import charleywong.ServerMain.*;
using Lambda;
using Reflect;
using StringTools;

enum abstract YBMapColor(String) to String {
    var yellow;
    var blue;
    var green;
}

enum abstract YBMapStatus(String) to String {
    var marked;
    var removed;
    var closed;
}

typedef YBMapData = {
    final id:Int;
    final internal_id:String;
    final name:String;
    final color:YBMapColor;
    final status:YBMapStatus;
    final district:String;
    final address:Null<String>;
    final lat:Null<String>;
    final lng:Null<String>;
    final category:String;
    final phones:Null<String>;
    final website:Null<String>;
    final email:Null<String>;
    final facebook:Null<String>;
    final instagram:Null<String>;
    final opening_hours:Null<Dynamic>;
    final opening_hours_remark:Null<String>;
    final created_at:String;
    final updated_at:String;
    final reasons:Null<Dynamic>;
}

typedef YBMapEatData = YBMapData & {
    final cuisines:String;             // comma separated string
    final restaurant_types:String;     // comma separated string
    final dishes:String;               // comma separated string
    final price_range:String;
    final openrice:Null<String>;
}

typedef YBMapShopData = YBMapData & {
    final subcategories:Null<String>;  // comma separated string
    final productservice:Null<String>; // comma separated string
}

class YellowBlueMap {
    static public var eats(get, null):Array<YBMapEatData>;
    static function get_eats() return eats != null ? eats : eats = try {
        Json.parse(File.getContent("ybm/api/v1/eats.json"));
    } catch (err) {
        trace('Unable to load YBM eats data.\n' + err);
        [];
    }

    static public var shops(get, null):Array<YBMapShopData>;
    static function get_shops() return shops != null ? shops : shops = try {
        Json.parse(File.getContent("ybm/api/v1/shops.json"));
    } catch (err) {
        trace('Unable to load YBM shops data.\n' + err);
        [];
    }

    static function urls(v:String):Array<Promise<Null<String>>> {
        var isShortUrl = ~/^https?:\/\/(?:bit\.do|bit\.ly)\//;
        var urls = if (v == null) {
            [];
        } else if (v.contains(",")) {
            ~/,/g.split(v).map(StringTools.trim);
        } else if (v.contains(" ")) {
            ~/ +/g.split(v).map(StringTools.trim);
        } else if (v.contains("\n")) {
            ~/\n/g.split(v).map(StringTools.trim);
        } else {
            [v];
        }
        return urls
            .filter(url -> url != null)
            .map(url -> url.trim())
            .filter(url -> url != "")
            .map(url ->
                if (!url.startsWith("http"))
                    "https://" + url
                else 
                    url
            )
            .map(url ->
                if (isShortUrl.match(url)) {
                    followRedirect(url).catchError(err -> {
                        trace('Could not handle $url. Error: $err');
                        null;
                    }).then(result -> {
                        // trace(url + " redirects to " + result);
                        result;
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
                                Sys.println('${d.name} (${d.id}) has a Facebook field value not a Facebook profile? ${url}');
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
                                Sys.println('${d.name} (${d.id}) has an Instagram field value not an Instagram profile? ${url}');
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
        var caches:Array<{type:YBMapType, data:Array<YBMapData>}> = [
            {type:eat, data:eats},
            {type:shop, data:shops},
        ];
        return Promise.all([
            for (c in caches)
            for (d in c.data)
            matchYBMapWithCharley(d)
                .then(entities ->
                    if (entities.length == 0) {
                        d;
                    } else {
                        for (e in entities) {
                            switch (e.yellowBlueMapIds) {
                                case null:
                                    e.yellowBlueMapIds = [{ type: c.type, id: d.id }];
                                    saveEntity(e, false, false);
                                case ids:
                                    for (id in ids.copy())
                                        if (Std.is(id, String))
                                            ids.remove(id);
                                    if (!ids.exists(id -> id.id == d.id)) {
                                        ids.push({ type: c.type, id: d.id });
                                        ids.sort((a, b) -> Reflect.compare(a.id, b.id));
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

    static function main():Void {
        switch (Sys.args()) {
            case ["sync"]:
                sync();
            case args:
                throw 'unknown args $args';
        }
    }
}