package workbox_strategies;

/**
	An implementation of a
	[cache-only]{@link https://developers.google.com/web/fundamentals/instant-and-offline/offline-cookbook/#cache-only}
	request strategy.
	
	This class is useful if you want to take advantage of any
	[Workbox plugins]{@link https://developers.google.com/web/tools/workbox/guides/using-plugins}.
	
	If there is no cache match, this will throw a `WorkboxError` exception.
**/
@:jsRequire("workbox-strategies", "CacheOnly") extern class CacheOnly extends Strategy {
	function new();
	function _handle(request:js.html.Request, handler:StrategyHandler):js.lib.Promise<js.html.Response>;
	static var prototype : CacheOnly;
}