package js.npm.google_spreadsheet;

import haxe.DynamicAccess;
import js.lib.Promise;

extern class GoogleSpreadsheetRow {
    public var rowNumber:Int;
    public var a1Range:String;
    public function get(key:String):Null<String>;
    public function set(key:String, value:Dynamic):Void;
    public function assign(obj:Dynamic):Void;
    public function toObject():DynamicAccess<String>;
    public function save():Promise<Void>;
    public function delete():Promise<Void>;
}
