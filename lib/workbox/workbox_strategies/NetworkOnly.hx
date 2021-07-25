package workbox_strategies;

/**
	An implementation of a
	[network-only]{@link https://developers.google.com/web/fundamentals/instant-and-offline/offline-cookbook/#network-only}
	request strategy.
	
	This class is useful if you want to take advantage of any
	[Workbox plugins]{@link https://developers.google.com/web/tools/workbox/guides/using-plugins}.
	
	If the network request fails, this will throw a `WorkboxError` exception.
**/
@:jsRequire("workbox-strategies", "NetworkOnly") extern class NetworkOnly extends Strategy {
	function new(?options:workbox_strategies.networkonly.NetworkOnlyOptions);
	private final _networkTimeoutSeconds : Dynamic;
	function _handle(request:js.html.Request, handler:StrategyHandler):js.lib.Promise<js.html.Response>;
	static var prototype : NetworkOnly;
}