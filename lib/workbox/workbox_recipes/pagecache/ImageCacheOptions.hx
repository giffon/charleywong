package workbox_recipes.pagecache;

typedef ImageCacheOptions = {
	@:optional
	var cacheName : String;
	@:optional
	dynamic function matchCallback(options:workbox_core.RouteMatchCallbackOptions):Dynamic;
	@:optional
	var networkTimeoutSeconds : Float;
	@:optional
	var plugins : Array<workbox_core.WorkboxPlugin>;
	@:optional
	var warmCache : Array<String>;
};