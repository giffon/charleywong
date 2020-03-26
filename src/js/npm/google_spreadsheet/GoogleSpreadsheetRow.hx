package js.npm.google_spreadsheet;

import js.lib.Promise;

extern class GoogleSpreadsheetRow implements Dynamic<String> implements ArrayAccess<String> {
    public var rowNumber:Int;
    public var a1Range:String;
    public function save():Promise<Void>;
    public function delete():Promise<Void>;
}