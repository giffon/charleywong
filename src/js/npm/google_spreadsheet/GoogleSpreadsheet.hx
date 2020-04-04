package js.npm.google_spreadsheet;

import haxe.DynamicAccess;
import js.lib.Promise;

@:jsRequire("google-spreadsheet", "GoogleSpreadsheet")
extern class GoogleSpreadsheet {
    public function new(sheetId:String):Void;
    public function useServiceAccountAuth(opts:Dynamic):Promise<Void>;
    public function useApiKey(apiKey:String):Void;
    public function loadInfo():Promise<Void>;
    public function updateProperties(opts:Dynamic):Promise<Void>;
    public function addSheet(opts:Dynamic):Promise<GoogleSpreadsheetWorksheet>;

    public var spreadsheetId:String;
    public var title:String;
    public var locale:String;
    public var timeZone:String;
    public var autoRecalc:String;
    public var defaultFormat:Dynamic;
    public var spreadsheetTheme:Dynamic;
    public var iterativeCalculationSettings:Dynamic;
    public var sheetsByIndex:Array<GoogleSpreadsheetWorksheet>;
    public var sheetsById:DynamicAccess<GoogleSpreadsheetWorksheet>;
    public var sheetCount:Int;
}