package workbox_core._private;

/**
	A class that wraps common IndexedDB functionality in a promise-based API.
	It exposes all the underlying power and functionality of IndexedDB, but
	wraps the most commonly used features in a way that's much simpler to use.
**/
@:jsRequire("workbox-core/_private", "DBWrapper") extern class DBWrapper {
	function new(name:String, version:Float, ?__2:workbox_core.DBWrapperOptions);
	private final _name : Dynamic;
	private final _version : Dynamic;
	@:optional
	private final _onupgradeneeded : Dynamic;
	private final _onversionchange : Dynamic;
	private var _db : Dynamic;
	@:optional
	var add : haxe.Constraints.Function;
	@:optional
	var clear : haxe.Constraints.Function;
	@:optional
	var count : haxe.Constraints.Function;
	@:optional
	var delete : haxe.Constraints.Function;
	@:optional
	var get : haxe.Constraints.Function;
	@:optional
	var put : haxe.Constraints.Function;
	@:optional
	var OPEN_TIMEOUT : Float;
	/**
		Returns the IDBDatabase instance (not normally needed).
	**/
	final db : Null<js.html.idb.Database>;
	/**
		Opens a connected to an IDBDatabase, invokes any onupgradedneeded
		callback, and added an onversionchange callback to the database.
	**/
	function open():js.lib.Promise<Null<DBWrapper>>;
	/**
		Polyfills the native `getKey()` method. Note, this is overridden at
		runtime if the browser supports the native method.
	**/
	function getKey(storeName:String, query:workbox_core.Query):js.lib.Promise<js.html.IDBValidKey>;
	/**
		Polyfills the native `getAll()` method. Note, this is overridden at
		runtime if the browser supports the native method.
	**/
	function getAll(storeName:String, ?query:ts.AnyOf7<String, Float, js.lib.Date, js.lib.ArrayBufferView, js.lib.ArrayBuffer, js.html.IDBArrayKey, js.html.idb.KeyRange>, ?count:Float):js.lib.Promise<Array<Dynamic>>;
	/**
		Polyfills the native `getAllKeys()` method. Note, this is overridden at
		runtime if the browser supports the native method.
	**/
	function getAllKeys(storeName:String, query:workbox_core.Query, count:Float):js.lib.Promise<Array<js.html.IDBValidKey>>;
	/**
		Supports flexible lookup in an object store by specifying an index,
		query, direction, and count. This method returns an array of objects
		with the signature .
	**/
	function getAllMatching(storeName:String, ?__1:workbox_core.GetAllMatchingOptions):js.lib.Promise<Array<Dynamic>>;
	/**
		Accepts a list of stores, a transaction type, and a callback and
		performs a transaction. A promise is returned that resolves to whatever
		value the callback chooses. The callback holds all the transaction logic
		and is invoked with two arguments:
		   1. The IDBTransaction object
		   2. A `done` function, that's used to resolve the promise when
		      when the transaction is done, if passed a value, the promise is
		      resolved to that value.
	**/
	function transaction(storeNames:ts.AnyOf2<String, Array<String>>, type:js.html.IDBTransactionMode, callback:(txn:js.html.idb.Transaction, done:haxe.Constraints.Function) -> Void):js.lib.Promise<Dynamic>;
	/**
		Delegates async to a native IDBObjectStore method.
	**/
	function _call(method:workbox_core.IDBObjectStoreMethods, storeName:String, type:js.html.IDBTransactionMode, args:haxe.extern.Rest<Dynamic>):js.lib.Promise<Dynamic>;
	/**
		Closes the connection opened by `DBWrapper.open()`. Generally this method
		doesn't need to be called since:
		   1. It's usually better to keep a connection open since opening
		      a new connection is somewhat slow.
		   2. Connections are automatically closed when the reference is
		      garbage collected.
		The primary use case for needing to close a connection is when another
		reference (typically in another tab) needs to upgrade it and would be
		blocked by the current, open connection.
	**/
	function close():Void;
	static var prototype : DBWrapper;
}