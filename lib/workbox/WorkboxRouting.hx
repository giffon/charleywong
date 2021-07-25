@:jsRequire("workbox-routing") @valueModuleOnly extern class WorkboxRouting {
	/**
		Easily register a RegExp, string, or function with a caching
		strategy to a singleton Router instance.
		
		This method will generate a Route for you if needed and
		call [registerRoute()]{@link module:workbox-routing.Router#registerRoute}.
	**/
	static function registerRoute(capture:ts.AnyOf4<String, js.lib.RegExp, workbox_core.RouteMatchCallback, workbox_routing.Route>, ?handler:workbox_core.RouteHandler, ?method:workbox_routing.utils.constants.HTTPMethod):workbox_routing.Route;
	/**
		If a Route throws an error while handling a request, this `handler`
		will be called and given a chance to provide a response.
	**/
	static function setCatchHandler(handler:workbox_core.RouteHandler):Void;
	/**
		Define a default `handler` that's called when no routes explicitly
		match the incoming request.
		
		Without a default handler, unmatched requests will go against the
		network as if there were no service worker present.
	**/
	static function setDefaultHandler(handler:workbox_core.RouteHandler):Void;
}