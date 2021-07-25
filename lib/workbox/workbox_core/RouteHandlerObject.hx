package workbox_core;

/**
	An object with a `handle` method of type `RouteHandlerCallback`.
	
	A `Route` object can be created with either an `RouteHandlerCallback`
	function or this `RouteHandler` object. The benefit of the `RouteHandler`
	is it can be extended (as is done by the `workbox-strategies` package).
**/
typedef RouteHandlerObject = {
	function handle(options:RouteHandlerCallbackOptions):js.lib.Promise<js.html.Response>;
};