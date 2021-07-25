package workbox_core;

typedef CacheDidUpdateCallbackParam = {
	var cacheName : String;
	var newResponse : js.html.Response;
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var oldResponse : js.html.Response;
	@:optional
	var state : MapLikeObject;
};