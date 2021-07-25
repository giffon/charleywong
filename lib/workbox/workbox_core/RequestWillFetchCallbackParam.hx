package workbox_core;

typedef RequestWillFetchCallbackParam = {
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var state : MapLikeObject;
};