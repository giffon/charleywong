package charleywong;

import haxe.macro.Compiler;
import js.npm.google_spreadsheet.*;
import charleywong.ServerMain.*;
import charleywong.GoogleServiceAccount.googleServiceAccount;
using Lambda;

enum abstract Sheet(String) to String {
    var info;
    var index;
    var places;
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
                        url_charleywong: 'https://charleywong.giffon.io/${e.id}',
                        tags: Tag.expend(e.tags).join(" "),
                        ybm_ids: switch (e.yellowBlueMapIds) {
                            case null: "";
                            case ids: ids.join(" ");
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
                        charleywong: 'https://charleywong.giffon.io/${e.id}',
                        name_en: e.name[en],
                        name_zh: e.name[zh],
                        webpages: e.webpages.map(p -> p.url).join("\n"),
                        posts: e.posts.map(p -> p.url).join("\n"),
                    }
                ]);
            });
    }

    static function populatePlaces(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == places);
        return sheet.clear()
            .then(_ -> sheet.loadCells())
            .then(_ -> sheet.setHeaderRow(["charleywong", "name", "tags", "places"]))
            .then(function(_){
                var rows = [
                    for (e in entityIndex.entities)
                    [
                        '=HYPERLINK("https://charleywong.giffon.io/${e.id}", "${e.id}")',
                        e.name.printAll(),
                        Tag.expend(e.tags).join(" "),
                    ].concat(
                        if (e.places != null)
                            [
                                for (p in e.places)
                                if (p.address != null)
                                (p.googleMapsPlaceId != null ? p.googleMapsPlaceId + ";" : "") + p.address.printAll()
                            ]
                        else
                            [
                                for (p in e.webpages) switch (cast p.meta:{ ?addr:String, ?single_line_address:String }) {
                                    case null:
                                        null;
                                    case { addr: addr } if (addr != null):
                                        addr;
                                    case { single_line_address: addr } if (addr != null):
                                        addr;
                                    case _:
                                        null;
                                }
                            ].filter(v -> v != null)
                    )
                ];
                return sheet.addRows(rows);
            })
            .then(_ -> sheet.loadCells("A2:A"))
            .then(_ -> {
                for (row in 1...sheet.rowCount) {
                    var cell = sheet.getCell(row, 0);
                    cell.hyperlinkDisplayType = "LINKED";
                }
                sheet.saveUpdatedCells();
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

    static function importGoogleMapsPlaceIds(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == places);
        var noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
        var lastRow = 2543;
        return sheet.loadCells('A1:Z$lastRow')
            .then(function(_){
                for (y in 1...lastRow) {
                    switch [sheet.getCell(y, 0).value, sheet.getCell(y, 5).value] {
                        case [null | "", _] | [_, null | ""]:
                            // pass
                        case [eid, _]:
                            switch (entityIndex.entitiesOfId[eid]) {
                                case null:
                                    throw 'There is no entity of id $eid';
                                case e:
                                    var placeIds = getCellRow(sheet, y, 5);
                                    var addresses = getCellRow(sheet, y+1, 5);
                                    e.places = [
                                        for (i in 0...Std.int(Math.max(placeIds.length, addresses.length))) {
                                            var place:Place = {};
                                            switch(addresses[i]) {
                                                case null:
                                                    //pass
                                                case address:
                                                    place.address = if (noChi.match(address)) {
                                                        en: address
                                                    } else {
                                                        zh: address
                                                    }
                                            }
                                            switch(placeIds[i]){
                                                case null:
                                                    //pass
                                                case placeId:
                                                    place.googleMapsPlaceId = placeId;
                                            }
                                            place;
                                        }
                                    ];
                                    saveEntity(e, false, false);
                            }
                    }
                }
            });
    }

    static function populateYBM(doc:GoogleSpreadsheet) {
        var sheet = doc.sheetsByIndex.find(s -> s.title == ybm_not_in_charley);
        return YellowBlueMap.sync()
            .then(notMapped ->
                sheet.clear()
                    .then(function(_){
                        return sheet.setHeaderRow(["id", "internal_id", "name", "website", "facebook", "instagram", "openrice"]);
                    })
                    .then(function(_){
                        return sheet.addRows(notMapped);
                    })
            );
    }

    static function main():Void {
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
                    .then(_ -> populatePlaces(doc))
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