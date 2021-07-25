package workbox_core;

typedef HandlerDidRespondCallbackParam = {
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var response : js.html.Response;
	@:optional
	var state : MapLikeObject;
};