package workbox_core;

typedef FetchDidSucceedCallbackParam = {
	var request : js.html.Request;
	var response : js.html.Response;
	var event : Dynamic;
	@:optional
	var state : MapLikeObject;
};