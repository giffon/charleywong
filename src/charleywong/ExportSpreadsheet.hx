package charleywong;

import haxe.Json;
import sys.io.File;
import js.npm.google_spreadsheet.GoogleSpreadsheet;
import charleywong.ServerMain.*;
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
                return sheet.setHeaderRow(["id", "name_en", "name_zh", "url_charleywong"]);
            })
            .then(function(_){
                return sheet.addRows([
                    for (e in entityIndex.entities)
                    {
                        id: e.id,
                        name_en: e.name[en],
                        name_zh: e.name[zh],
                        url_charleywong: 'https://charleywong.giffon.io/${e.id}',
                    }
                ]);
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

    static function main():Void {
        doc.useServiceAccountAuth(Json.parse(File.getContent("Giffon-3bb380c38488.json")))
            .then(_ -> doc.loadInfo())
            .then(_ -> populateIndex())
            .then(_ -> populateWebpages())
            .then(_ -> updateLastUpdateDate());
    }
}