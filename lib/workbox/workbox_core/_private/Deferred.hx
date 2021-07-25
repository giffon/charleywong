package workbox_core._private;

/**
	The Deferred class composes Promises in a way that allows for them to be
	resolved or rejected from outside the constructor. In most cases promises
	should be used directly, but Deferreds can be necessary when the logic to
	resolve a promise must be separate.
**/
@:jsRequire("workbox-core/_private", "Deferred") extern class Deferred<T> {
	/**
		Creates a promise and exposes its resolve and reject functions as methods.
	**/
	function new();
	var promise : js.lib.Promise<T>;
	dynamic function resolve(?value:T):Void;
	dynamic function reject(?reason:Dynamic):Void;
	static var prototype : Deferred<Dynamic>;
}