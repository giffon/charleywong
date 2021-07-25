package workbox_core;

typedef CachedResponseWillBeUsedCallbackParam = {
	var cacheName : String;
	var request : js.html.Request;
	@:optional
	var cachedResponse : js.html.Response;
	var event : Dynamic;
	@:optional
	var matchOptions : js.html.CacheQueryOptions;
	@:optional
	var state : MapLikeObject;
};