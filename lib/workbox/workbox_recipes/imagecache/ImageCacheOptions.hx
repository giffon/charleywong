package workbox_recipes.imagecache;

typedef ImageCacheOptions = {
	@:optional
	var cacheName : String;
	@:optional
	dynamic function matchCallback(options:workbox_core.RouteMatchCallbackOptions):Dynamic;
	@:optional
	var maxAgeSeconds : Float;
	@:optional
	var maxEntries : Float;
	@:optional
	var plugins : Array<workbox_core.WorkboxPlugin>;
	@:optional
	var warmCache : Array<String>;
};