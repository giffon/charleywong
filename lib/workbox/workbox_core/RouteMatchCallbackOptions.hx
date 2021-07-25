package workbox_core;

/**
	Options passed to a `RouteMatchCallback` function.
**/
typedef RouteMatchCallbackOptions = {
	var event : Dynamic;
	var request : js.html.Request;
	var sameOrigin : Bool;
	var url : js.html.URL;
};