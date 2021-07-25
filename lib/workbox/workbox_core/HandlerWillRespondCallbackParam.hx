package workbox_core;

typedef HandlerWillRespondCallbackParam = {
	var request : js.html.Request;
	var response : js.html.Response;
	var event : Dynamic;
	@:optional
	var state : MapLikeObject;
};