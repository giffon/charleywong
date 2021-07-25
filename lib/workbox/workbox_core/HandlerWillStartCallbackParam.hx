package workbox_core;

typedef HandlerWillStartCallbackParam = {
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var state : MapLikeObject;
};