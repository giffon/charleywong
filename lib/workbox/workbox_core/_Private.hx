package workbox_core;

@:jsRequire("workbox-core/_private") @valueModuleOnly extern class _Private {
	static final assert : Null<{
		dynamic function hasMethod(object:MapLikeObject, expectedMethod:String, details:MapLikeObject):Void;
		dynamic function isArray(value:Array<Dynamic>, details:MapLikeObject):Void;
		dynamic function isInstance(object:{ }, expectedClass:haxe.Constraints.Function, details:MapLikeObject):Void;
		dynamic function isOneOf(value:Dynamic, validValues:Array<Dynamic>, details:MapLikeObject):Void;
		dynamic function isType(object:{ }, expectedType:String, details:MapLikeObject):Void;
		dynamic function isArrayOfClass(value:Dynamic, expectedClass:haxe.Constraints.Function, details:MapLikeObject):Void;
	}>;
	/**
		Matches an item in the cache, ignoring specific URL params. This is similar
		to the `ignoreSearch` option, but it allows you to ignore just specific
		params (while continuing to match on the others).
	**/
	static function cacheMatchIgnoreParams(cache:js.html.Cache, request:js.html.Request, ignoreParams:Array<String>, ?matchOptions:js.html.CacheQueryOptions):js.lib.Promise<Null<js.html.Response>>;
	static final cacheNames : {
		dynamic function updateDetails(details:workbox_core._private.cachenames.PartialCacheNameDetails):Void;
		dynamic function getGoogleAnalyticsName(?userCacheName:String):String;
		dynamic function getPrecacheName(?userCacheName:String):String;
		dynamic function getPrefix():String;
		dynamic function getRuntimeName(?userCacheName:String):String;
		dynamic function getSuffix():String;
	};
	/**
		A utility function that determines whether the current browser supports
		constructing a [`ReadableStream`](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/ReadableStream)
		object.
	**/
	static function canConstructReadableStream():Bool;
	/**
		A utility function that determines whether the current browser supports
		constructing a new `Response` from a `response.body` stream.
	**/
	static function canConstructResponseFromBodyStream():Bool;
	/**
		A helper function that prevents a promise from being flagged as unused.
	**/
	static function dontWaitFor(promise:js.lib.Promise<Dynamic>):Void;
	/**
		Deletes the database.
		Note: this is exported separately from the DBWrapper module because most
		usages of IndexedDB in workbox dont need deleting, and this way it can be
		reused in tests to delete databases without creating DBWrapper instances.
	**/
	static function deleteDatabase(name:String):js.lib.Promise<Void>;
	/**
		Runs all of the callback functions, one at a time sequentially, in the order
		in which they were registered.
	**/
	static function executeQuotaErrorCallbacks():js.lib.Promise<Void>;
	static function getFriendlyURL(url:ts.AnyOf2<String, js.html.URL>):String;
	static final logger : js.html.Console;
	/**
		Returns a promise that resolves to a window client matching the passed
		`resultingClientId`. For browsers that don't support `resultingClientId`
		or if waiting for the resulting client to apper takes too long, resolve to
		`undefined`.
	**/
	static function resultingClientExists(?resultingClientId:String):js.lib.Promise<Dynamic>;
	/**
		Returns a promise that resolves and the passed number of milliseconds.
		This utility is an async/await-friendly version of `setTimeout`.
	**/
	static function timeout(ms:Float):js.lib.Promise<Any>;
	/**
		A utility method that makes it easier to use `event.waitUntil` with
		async functions and return the result.
	**/
	static function waitUntil(event:Dynamic, asyncFn:() -> js.lib.Promise<Dynamic>):js.lib.Promise<Dynamic>;
}