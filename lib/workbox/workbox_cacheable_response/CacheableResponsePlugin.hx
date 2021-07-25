package workbox_cacheable_response;

/**
	A class implementing the `cacheWillUpdate` lifecycle callback. This makes it
	easier to add in cacheability checks to requests made via Workbox's built-in
	strategies.
**/
@:jsRequire("workbox-cacheable-response", "CacheableResponsePlugin") extern class CacheableResponsePlugin {
	/**
		To construct a new CacheableResponsePlugin instance you must provide at
		least one of the `config` properties.
		
		If both `statuses` and `headers` are specified, then both conditions must
		be met for the `Response` to be considered cacheable.
	**/
	function new(config:workbox_cacheable_response.cacheableresponse.CacheableResponseOptions);
	private final _cacheableResponse : Dynamic;
	@:optional
	dynamic function cacheWillUpdate(param:workbox_core.CacheWillUpdateCallbackParam):js.lib.Promise<Null<ts.AnyOf2<Void, js.html.Response>>>;
	static var prototype : CacheableResponsePlugin;
}