package charleywong;

import js.npm.google_spreadsheet.GoogleSpreadsheet;

class YellowBlueMap {
    static final serviceAccountFile = "Giffon-3bb380c38488.json";
    static final sheetId = "1fKW2yldIQNTuRM6-DbrAvyNbQC5Gd0WqEW99q6Zb-Og";
    static final doc = new GoogleSpreadsheet(sheetId);
}