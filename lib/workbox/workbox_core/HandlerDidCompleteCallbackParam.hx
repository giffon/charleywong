package workbox_core;

typedef HandlerDidCompleteCallbackParam = {
	var request : js.html.Request;
	@:optional
	var error : js.lib.Error;
	var event : Dynamic;
	@:optional
	var response : js.html.Response;
	@:optional
	var state : MapLikeObject;
};