package workbox_core;

typedef FetchDidFailCallbackParam = {
	var error : js.lib.Error;
	var originalRequest : js.html.Request;
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var state : MapLikeObject;
};