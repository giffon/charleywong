package charleywong;

#if js
import js.npm.google_spreadsheet.GoogleSpreadsheet;
import charleywong.GoogleServiceAccount.googleServiceAccount;
import charleywong.UrlExtractors.*;
#end

import haxe.*;
import sys.io.File;
using Lambda;
using Reflect;
using StringTools;

typedef HkbaseData = {
    var name_zh:String;
    var name_en:String;
    var type:String;
    var email:String;
    var tel:String;
    var webpages:Array<String>;
    var description:String;
}

typedef HkbaseDump = Array<HkbaseData>;

class HkbaseDirectory {
    #if js
    static final sheetId = "1tZ-ODQRQFI1bzvekxkR0g4eULcPk9D3BZTOYbvYWdt8";
    static final doc = new GoogleSpreadsheet(sheetId);
    #end
    static final localCacheFile = "HkbaseDirectory.json";

    static public var localCache(get, null):HkbaseDump;
    static function get_localCache() return localCache != null ? localCache : localCache = try {
        Json.parse(File.getContent(localCacheFile));
    } catch (e:Dynamic) {
        trace('Unable to load $localCacheFile');
        [];
    }

    final data:HkbaseDump;
    public function new(dump):Void {
        data = dump;
    }

    static function url(v:String):String {
        if (!v.startsWith("http"))
            v = "http://" + v;
        return v;
    }


    static public function match(data:HkbaseData, e:Entity):Bool {
        if (e.webpages.exists(p -> data.webpages.has(p.url)))
            return true;

        if (e.webpages.exists(p -> p.url == 'tel:' + data.tel))
            return true;

        if (e.webpages.exists(p -> p.url == 'mailto:' + data.email))
            return true;

        return false;
    }

    static public function getEntity(data:HkbaseData, entities:Iterable<Entity>):Null<Entity> {
        return entities.find(e -> match(data, e));
    }

    static public function getData(e:Entity):Null<HkbaseData> {
        return localCache.find(data -> match(data, e));
    }

    #if js
    static function strCol(row:Dynamic, colName:String):Null<String> {
        return switch (row.field(colName)) {
            case null:
                throw '$colName not found in $row';
            case v:
                switch (StringTools.trim(v)) {
                    case "" | "/" | "-":
                        null;
                    case v:
                        v;
                }
        }
    }

    static function urlCol(row:Dynamic, colName:String):Null<String> {
        var str = strCol(row, colName);
        if (str == null)
            return str;

        if (!str.startsWith("http"))
            str = "http://" + str;

        return UrlExtractors.cleanUrl(str);
    }

    static function telCol(row:Dynamic, colName:String):Null<String> {
        var str = strCol(row, colName);
        if (str == null)
            return str;

        str = ~/[^0-9]/g.replace(str, "");
        if (!~/[0-9]{8}/.match(str))
            return null;

        return str;
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

    static function dumpToFile() {
        var sheet = doc.sheetsByIndex[0];
        sheet.loadCells()
            .then(_ -> sheet.getRows())
            .then(rows -> [
                for (row in rows)
                {
                    name_zh: strCol(row, "公司名稱(中文)"),
                    name_en: strCol(row, "公司名稱(英文)"),
                    type: strCol(row, "業務性質"),
                    email: strCol(row, "電郵"),
                    tel: telCol(row, "電話"),
                    webpages: [
                        urlCol(row, "網址"),
                        urlCol(row, "社交媒體(1)"),
                        urlCol(row, "社交媒體(2)"),
                        urlCol(row, "社交媒體(3)"),
                    ].filter(v -> v != null),
                    description: strCol(row, "HKBASE推介"),
                }
            ])
            .then(data -> File.saveContent(localCacheFile, Json.stringify(data, null, "  ")));
    }

    static public function dump() {
        return doc.useServiceAccountAuth(googleServiceAccount)
            .then(_ -> doc.loadInfo())
            .then(_ -> dumpToFile());
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["dump"]:
                dump();
            case _:
                throw "unknown args";
        }
    }
    #end
}