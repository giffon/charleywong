package charleywong;

import js.npm.google_spreadsheet.*;
import charleywong.ServerMain.*;
import charleywong.GoogleServiceAccount.googleServiceAccount;
using Lambda;

class ExportSpreadsheet {
    static final sheetId = "1OXVTI1DsZK9tSulJmfXAD5-pUyRneIuM6zzwmIL_SJQ";
    static final doc = new GoogleSpreadsheet(sheetId);

    static function updateLastUpdateDate() {
        var infoSheet = doc.sheetsByIndex[0];
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

    static function populateIndex() {
        var sheet = doc.sheetsByIndex[1];
        return sheet.clear()
            .then(function(_){
                return sheet.setHeaderRow(["id", "name_en", "name_zh", "url_charleywong", "tags"]);
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
                    }
                ]);
            });
    }

    static function populatePlaces() {
        var sheet = doc.sheetsByIndex[3];
        return sheet.clear()
            .then(_ -> sheet.loadCells())
            .then(_ -> sheet.setHeaderRow(["id", "name_en", "name_zh", "url_charleywong", "tags", "places"]))
            .then(function(_){
                var data = [
                    for (e in entityIndex.entities)
                    {
                        id: e.id,
                        name_en: e.name[en],
                        name_zh: e.name[zh],
                        url_charleywong: 'https://charleywong.giffon.io/${e.id}',
                        tags: Tag.expend(e.tags).join(" ")
                    }
                ];
                var rows = [];
                for (d in data) {
                    rows.push(d);
                    rows.push({
                        id: null,
                        name_en: null,
                        name_zh: null,
                        url_charleywong: null,
                        tags: null,
                    });
                }
                var sheetRows = sheet.addRows(rows);
                return sheetRows
                    .then(_ -> sheet.resize({
                        rowCount: rows.length + 1,
                        columnCount: sheet.columnCount,
                    }))
                    .then(_ -> sheet.loadCells())
                    .then(_ -> sheetRows);
            })
            .then(function(rows){
                for (row in rows) {
                    var id = row.id;
                    var e = entityIndex.entitiesOfId[id];
                    if (e != null) {
                        if (e.places != null) {
                            setCellRow(sheet, row.rowNumber - 1, 5, e.places.map(p -> p.googleMapsPlaceId));
                            setCellRow(sheet, row.rowNumber, 5, e.places.map(p -> p.address == null ? null : p.address.printAll()));
                        } else {
                            var addresses:Array<String> = [
                                for (p in e.webpages) if (p.meta != null) switch (p.meta["addr"]) {
                                    case null:
                                        null;
                                    case addr:
                                        addr;
                                }
                            ].filter(v -> v != null);
                            setCellRow(sheet, row.rowNumber, 5, addresses);
                        }
                    }
                }
                return sheet.saveUpdatedCells();
            });
    }

    static function populateWebpages() {
        var sheet = doc.sheetsByIndex[2];
        return sheet.clear()
            .then(function(_){
                return sheet.setHeaderRow(["id", "url"]);
            })
            .then(function(_){
                return sheet.addRows([
                    for (e in entityIndex.entities)
                    [e.id].concat(e.webpages.map(p -> p.url))
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

    static function importGoogleMapsPlaceIds() {
        var sheet = doc.sheetsByIndex[3];
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

    static function main():Void {
        doc.useServiceAccountAuth(googleServiceAccount)
            .then(_ -> doc.loadInfo())
            // .then(_ -> importGoogleMapsPlaceIds());
            .then(_ -> populateIndex())
            .then(_ -> populateWebpages())
            .then(_ -> populatePlaces())
            .then(_ -> updateLastUpdateDate());
    }
}