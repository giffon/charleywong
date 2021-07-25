package workbox_strategies;

/**
	An implementation of a
	[network first]{@link https://developers.google.com/web/fundamentals/instant-and-offline/offline-cookbook/#network-falling-back-to-cache}
	request strategy.
	
	By default, this strategy will cache responses with a 200 status code as
	well as [opaque responses]{@link https://developers.google.com/web/tools/workbox/guides/handle-third-party-requests}.
	Opaque responses are are cross-origin requests where the response doesn't
	support [CORS]{@link https://enable-cors.org/}.
	
	If the network request fails, and there is no cache match, this will throw
	a `WorkboxError` exception.
**/
@:jsRequire("workbox-strategies", "NetworkFirst") extern class NetworkFirst extends Strategy {
	function new(?options:workbox_strategies.networkfirst.NetworkFirstOptions);
	private final _networkTimeoutSeconds : Dynamic;
	function _handle(request:js.html.Request, handler:StrategyHandler):js.lib.Promise<js.html.Response>;
	private var _getTimeoutPromise : Dynamic;
	function _getNetworkPromise(__0:{ var request : js.html.Request; var logs : Array<Dynamic>; @:optional var timeoutId : Float; var handler : StrategyHandler; }):js.lib.Promise<Null<js.html.Response>>;
	static var prototype : NetworkFirst;
}