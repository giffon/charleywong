package workbox_routing;

/**
	A `Route` consists of a pair of callback functions, "match" and "handler".
	The "match" callback determine if a route should be used to "handle" a
	request by returning a non-falsy value if it can. The "handler" callback
	is called when there is a match and should return a Promise that resolves
	to a `Response`.
**/
@:jsRequire("workbox-routing", "Route") extern class Route {
	/**
		Constructor for Route class.
	**/
	function new(match:workbox_core.RouteMatchCallback, handler:workbox_core.RouteHandler, ?method:workbox_routing.utils.constants.HTTPMethod);
	var handler : workbox_core.RouteHandlerObject;
	dynamic function match(options:workbox_core.RouteMatchCallbackOptions):Dynamic;
	var method : workbox_routing.utils.constants.HTTPMethod;
	@:optional
	var catchHandler : workbox_core.RouteHandlerObject;
	function setCatchHandler(handler:workbox_core.RouteHandler):Void;
	static var prototype : Route;
}