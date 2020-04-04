package charleywong;

import js.lib.Promise;
import haxe.*;
import sys.io.File;
import js.npm.google_spreadsheet.GoogleSpreadsheet;

class YellowBlueMap {
    static final serviceAccountFile = "Giffon-3bb380c38488.json";
    static final sheetId = "1fKW2yldIQNTuRM6-DbrAvyNbQC5Gd0WqEW99q6Zb-Og";
    static final doc = new GoogleSpreadsheet(sheetId);
    static final localCacheFile = "YellowBlueMap.json";

    static function dumpToFile() {
        Promise.all(doc.sheetsByIndex.map(sheet ->
            sheet.getRows().then(rows ->
                rows.map(row -> {
                    var o:DynamicAccess<Dynamic> = {};
                    for (h in sheet.headerValues)
                        o[h] = Reflect.field(row, h);
                    o;
                })
            ).then(rows -> {
                title: sheet.title,
                rows: rows,
            })
        )).then(sheets -> File.saveContent(localCacheFile, Json.stringify(sheets, null, "  ")));
    }

    static function main():Void {
        doc.useServiceAccountAuth(Json.parse(File.getContent(serviceAccountFile)))
            .then(_ -> doc.loadInfo())
            .then(_ -> dumpToFile());
    }
}