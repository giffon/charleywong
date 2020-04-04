package js.npm.google_spreadsheet;

import js.lib.Promise;

extern class GoogleSpreadsheetWorksheet {
    public function loadCells(?opts:Dynamic):Promise<Void>;
    public function getCell(rowIndex:Int, columnIndex:Int):GoogleSpreadsheetCell;
    public function getCellByA1(address:String):GoogleSpreadsheetCell;
    public function loadHeaderRow(headerValues:Array<String>):Promise<Void>;
    public function setHeaderRow(headerValues:Array<String>):Promise<Void>;
    public function addRow(rowValues:Dynamic, ?opts:Dynamic):Promise<GoogleSpreadsheetRow>;
    public function addRows<T>(arrayOfRowValues:Array<T>, ?opts:Dynamic):Promise<Array<GoogleSpreadsheetRow>>;
    public function getRows(?opts:Dynamic):Promise<Array<GoogleSpreadsheetRow>>;
    public function saveUpdatedCells():Promise<Void>;
    public function saveCells(cells:Array<GoogleSpreadsheetCell>):Promise<Void>;
    public function clear():Promise<Void>;
    public function delete():Promise<Void>;
    public function copyToSpreadsheet(destinationSpreadsheetId:String):Promise<Void>;
    public function updateProperties(props:Dynamic):Promise<Void>;
    public function resize(props:Dynamic):Promise<Void>;
    public function updateDimensionProperties(columnsOrRows:String, props:Dynamic, bounds:Dynamic):Promise<Void>;

    public var sheetId:String;
    public var title:String;
    public var index:Int;
    public var sheetType:String;
    public var gridProperties:Dynamic;
    public var hidden:Bool;
    public var tabColor:Dynamic;
    public var rightToLeft:Bool;
    public var rowCount:Int;
    public var columnCount:Int;
    public var cellStats:{
        total:Int,
        loaded:Int,
        nonEmpty:Int,
    };
    public var headerValues:Array<String>;
}