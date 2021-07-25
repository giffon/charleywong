package workbox_core;

typedef GetAllMatchingOptions = {
	@:optional
	var index : String;
	@:optional
	var query : ts.AnyOf7<String, Float, js.lib.Date, js.lib.ArrayBufferView, js.lib.ArrayBuffer, js.html.IDBArrayKey, js.html.idb.KeyRange>;
	@:optional
	var direction : js.html.IDBCursorDirection;
	@:optional
	var count : Float;
	@:optional
	var includeKeys : Bool;
};