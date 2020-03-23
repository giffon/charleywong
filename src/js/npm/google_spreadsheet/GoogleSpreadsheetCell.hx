package js.npm.google_spreadsheet;

import js.lib.Promise;

extern class GoogleSpreadsheetCell {
    public var rowIndex:Int;
    public var columnIndex:Int;
    public var a1Row:Int;
    public var a1Column:String;
    public var a1Address:String;

    public var value:Dynamic;
    public var valueType:String;
    public var formattedValue:Dynamic;
    public var formula:String;
    public var formulaError:Dynamic;
    public var note:String;
    public var hyperlink:String;

    public var numberFormat:Dynamic;
    public var backgroundColor:Dynamic;
    public var borders:Dynamic;
    public var padding:Dynamic;
    public var horizontalAlignment:String;
    public var verticalAlignment:String;
    public var wrapStrategy:String;
    public var textDirection:String;
    public var textFormat:Dynamic;
    public var hyperlinkDisplayType:String;
    public var textRotation:Dynamic;

    public function clearAllFormatting():Void;
    public function discardUnsavedChanges():Void;
    public function save():Promise<Void>;
}