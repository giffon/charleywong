package charleywong;

import haxe.macro.Compiler;
import js.npm.google_spreadsheet.*;
import charleywong.ServerMain.*;
import charleywong.GoogleServiceAccount.googleServiceAccount;
using Lambda;
using StringTools;

enum abstract Sheet(String) to String {
    var info;
    var index;
    var ybm_not_in_charley;
    var data;
}

class ExportSpreadsheet {
    static function updateLastUpdateDate(doc:GoogleSpreadsheet) {
        var infoSheet = doc.sheetsByIndex.find(s -> s.title == info);
        var lastUpdateCell = "B7";
        return infoSheet.loadCells()
            .then(function(_){
                var cell = infoSheet.getCellByA1(lastUpdateCell);
                cell.formula = "=NOW()";
                return cell.save();
            })
            .then(function(_){
                var cell = infoSheet.getCellByA1(lastUpdateCell);
                cell.value = cell.formattedValue;
                return cell.save();
            });
    }

    static function populateIndex(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == index);
        return sheet.clear()
            .then(function(_){
                return sheet.setHeaderRow(["id", "name_en", "name_zh", "url_charleywong", "tags", "ybm_ids"]);
            })
            .then(function(_){
                return sheet.addRows([
                    for (e in entityIndex.entities)
                    {
                        id: e.id,
                        name_en: e.name[en],
                        name_zh: e.name[zh],
                        url_charleywong: 'https://charleywong.info/${e.id}',
                        tags: Tag.expend(e.tags).join(" "),
                        ybm_ids: switch (e.yellowBlueMapIds) {
                            case null: "";
                            case ids: ids.map(ybm -> ybm.type + ":" + ybm.id).join(" ");
                        }
                    }
                ]);
            });
    }

    static function populateData(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == data);
        return sheet.clear()
            .then(function(_){
                return sheet.setHeaderRow(["charleywong", "name_en", "name_zh", "webpages", "posts"]);
            })
            .then(function(_){
                return sheet.addRows([
                    for (e in entityIndex.entities)
                    {
                        charleywong: 'https://charleywong.info/${e.id}',
                        name_en: e.name[en],
                        name_zh: e.name[zh],
                        webpages: e.webpages.map(p -> p.url).join("\n"),
                        posts: e.posts.map(p -> p.url).join("\n"),
                    }
                ]);
            });
    }

    static function getCellRow(sheet:GoogleSpreadsheetWorksheet, rowIndex:Int, columnIndex:Int):Array<String> {
        var values = [];
        while (true) {
            switch (sheet.getCell(rowIndex, columnIndex).value) {
                case null | "":
                    break;
                case v:
                    values.push(v);
                    columnIndex++;
            }
        };
        return values;
    }

    static function setCellRow(sheet:GoogleSpreadsheetWorksheet, rowIndex:Int, columnIndex:Int, values:Array<String>) {
        for (i in 0...values.length) {
            var cell = sheet.getCell(rowIndex, columnIndex + i);
            cell.value = values[i];
        }
    }

    static function importTags(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == index);
        return sheet.getRows()
            .then(function(rows){
                for (row in rows) {
                    switch (entityIndex.entitiesOfId[row.id]) {
                        case null:
                            trace('There is no entity of id ${row.id}');
                        case e:
                            var tags = ~/ +/g.split(row.tags);
                            var existing = Tag.expend(e.tags);
                            var newTags = [
                                for (t in tags)
                                if (!existing.has(t))
                                t
                            ];
                            var removedTags = [
                                for (t in Tag.expend(existing))
                                if (!tags.has(t))
                                t
                            ];
                            if (newTags.length > 0 || removedTags.length > 0) {
                                for (t in newTags)
                                    e.tags.push(t);
                                for (t in removedTags)
                                    e.tags.remove(t);
                                saveEntity(e, false, false);
                            }
                    }
                }
            });
    }

    static function populateYBM(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == ybm_not_in_charley);
        return YellowBlueMap.dump()
            .then(_ -> YellowBlueMap.sync())
            .then(notMapped ->
                sheet.clear()
                    .then(function(_){
                        return sheet.setHeaderRow(["id", "internal_id", "status", "name", "website", "facebook", "instagram", "openrice"]);
                    })
                    .then(function(_){
                        notMapped.sort((r1, r2) -> Reflect.compare(r1.internal_id, r2.internal_id));
                        return sheet.addRows(notMapped.filter(d -> d.color == yellow && d.status != removed));
                    })
            );
    }

    static function archiveStandNewsUrlsCmd() {
        final urls = [
            for (e in entityIndex.entities)
            for (p in e.posts)
            if (p.url.startsWith("https://www.thestandnews.com/"))
            p.url => p.url
        ].map(url -> 'earthly +wayback-save --URL "${url}"');
        Sys.println(urls.join("\n"));
    }

    static function main():Void {
        switch (Sys.args()) {
            case ["archiveStandNewsUrlsCmd"]:
                archiveStandNewsUrlsCmd();
                return;
            case _: //pass
        }

        switch(Compiler.getDefine("CI")) {
            case null:
                var doc = new GoogleSpreadsheet("1OXVTI1DsZK9tSulJmfXAD5-pUyRneIuM6zzwmIL_SJQ");
                // var doc = new GoogleSpreadsheet("1HBYmXJIZE-4SDhGSv1SrKaf26Ex6FPi-4qPX_HVnUrA");
                doc.useServiceAccountAuth(googleServiceAccount)
                    .then(_ -> doc.loadInfo())
                    // .then(_ -> importTags());
                    // .then(_ -> importGoogleMapsPlaceIds());
                    .then(_ -> populateYBM(doc))
                    .then(_ -> populateIndex(doc))
                    .then(_ -> updateLastUpdateDate(doc));
            case "1":
                var doc = new GoogleSpreadsheet("1HBYmXJIZE-4SDhGSv1SrKaf26Ex6FPi-4qPX_HVnUrA");
                doc.useServiceAccountAuth(googleServiceAccount)
                    .then(_ -> doc.loadInfo())
                    .then(_ -> populateData(doc))
                    .then(_ -> updateLastUpdateDate(doc));
        }
    }
}