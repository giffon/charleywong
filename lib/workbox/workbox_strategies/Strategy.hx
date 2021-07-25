package workbox_strategies;

/**
	An abstract base class that all other strategy classes must extend from:
**/
@:jsRequire("workbox-strategies", "Strategy") extern class Strategy {
	/**
		Creates a new instance of the strategy and sets all documented option
		properties as public instance properties.
		
		Note: if a custom strategy class extends the base Strategy class and does
		not need more than these properties, it does not need to define its own
		constructor.
	**/
	function new(?options:workbox_strategies.strategy.StrategyOptions);
	var cacheName : String;
	var plugins : Array<workbox_core.WorkboxPlugin>;
	@:optional
	var fetchOptions : js.html.RequestInit;
	@:optional
	var matchOptions : js.html.CacheQueryOptions;
	private function _handle(request:js.html.Request, handler:StrategyHandler):js.lib.Promise<Null<js.html.Response>>;
	/**
		Perform a request strategy and returns a `Promise` that will resolve with
		a `Response`, invoking all relevant plugin callbacks.
		
		When a strategy instance is registered with a Workbox
		[route]{@link module:workbox-routing.Route}, this method is automatically
		called when the route matches.
		
		Alternatively, this method can be used in a standalone `FetchEvent`
		listener by passing it to `event.respondWith()`.
	**/
	function handle(options:Dynamic):js.lib.Promise<js.html.Response>;
	/**
		Similar to [`handle()`]{@link module:workbox-strategies.Strategy~handle}, but
		instead of just returning a `Promise` that resolves to a `Response` it
		it will return an tuple of [response, done] promises, where the former
		(`response`) is equivalent to what `handle()` returns, and the latter is a
		Promise that will resolve once any promises that were added to
		`event.waitUntil()` as part of performing the strategy have completed.
		
		You can await the `done` promise to ensure any extra work performed by
		the strategy (usually caching responses) completes successfully.
	**/
	function handleAll(options:Dynamic):ts.Tuple2<js.lib.Promise<js.html.Response>, js.lib.Promise<Void>>;
	function _getResponse(handler:StrategyHandler, request:js.html.Request, event:Dynamic):js.lib.Promise<js.html.Response>;
	function _awaitComplete(responseDone:js.lib.Promise<js.html.Response>, handler:StrategyHandler, request:js.html.Request, event:Dynamic):js.lib.Promise<Void>;
	static var prototype : Strategy;
}