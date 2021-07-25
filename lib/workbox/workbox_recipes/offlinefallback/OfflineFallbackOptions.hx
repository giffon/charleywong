package workbox_recipes.offlinefallback;

typedef OfflineFallbackOptions = {
	@:optional
	var pageFallback : String;
	@:optional
	var imageFallback : String;
	@:optional
	var fontFallback : String;
};