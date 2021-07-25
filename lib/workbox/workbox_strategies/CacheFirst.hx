package workbox_strategies;

/**
	An implementation of a [cache-first]{@link https://developers.google.com/web/fundamentals/instant-and-offline/offline-cookbook/#cache-falling-back-to-network}
	request strategy.
	
	A cache first strategy is useful for assets that have been revisioned,
	such as URLs like `/styles/example.a8f5f1.css`, since they
	can be cached for long periods of time.
	
	If the network request fails, and there is no cache match, this will throw
	a `WorkboxError` exception.
**/
@:jsRequire("workbox-strategies", "CacheFirst") extern class CacheFirst extends Strategy {
	function new(options:Dynamic);
	function _handle(request:js.html.Request, handler:StrategyHandler):js.lib.Promise<js.html.Response>;
	static var prototype : CacheFirst;
}