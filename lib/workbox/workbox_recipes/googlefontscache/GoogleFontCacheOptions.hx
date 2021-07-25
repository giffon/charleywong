package workbox_recipes.googlefontscache;

typedef GoogleFontCacheOptions = {
	@:optional
	var cachePrefix : String;
	@:optional
	var maxAgeSeconds : Float;
	@:optional
	var maxEntries : Float;
};