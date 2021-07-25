package workbox_core;

/**
	Either a `RouteHandlerCallback` or a `RouteHandlerObject`.
	Most APIs in `workbox-routing` that accept route handlers take either.
**/
typedef RouteHandler = ts.AnyOf2<RouteHandlerCallback, RouteHandlerObject>;