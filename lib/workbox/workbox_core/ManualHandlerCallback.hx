package workbox_core;

/**
	The "handler" callback is invoked whenever a `Router` matches a URL/Request
	to a `Route` via its `RouteMatchCallback`. This handler callback should
	return a `Promise` that resolves with a `Response`.
	
	If a non-empty array or object is returned by the `RouteMatchCallback` it
	will be passed in as this handler's `options.params` argument.
**/
typedef ManualHandlerCallback = (options:ManualHandlerCallbackOptions) -> js.lib.Promise<js.html.Response>;