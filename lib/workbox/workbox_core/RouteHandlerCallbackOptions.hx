package workbox_core;

/**
	Options passed to a `RouteHandlerCallback` function.
**/
typedef RouteHandlerCallbackOptions = {
	var event : Dynamic;
	var request : js.html.Request;
	var url : js.html.URL;
	@:optional
	var params : ts.AnyOf2<MapLikeObject, Array<String>>;
};