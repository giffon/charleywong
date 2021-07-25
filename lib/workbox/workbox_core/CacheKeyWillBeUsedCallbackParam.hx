package workbox_core;

typedef CacheKeyWillBeUsedCallbackParam = {
	var mode : String;
	var request : js.html.Request;
	var event : Dynamic;
	@:optional
	var params : Dynamic;
	@:optional
	var state : MapLikeObject;
};