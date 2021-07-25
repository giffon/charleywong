package workbox_core;

typedef HandlerDidErrorCallbackParam = {
	var request : js.html.Request;
	var event : Dynamic;
	var error : js.lib.Error;
	@:optional
	var state : MapLikeObject;
};