@:jsRequire("workbox-recipes") @valueModuleOnly extern class WorkboxRecipes {
	/**
		An implementation of the [Google fonts]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#google_fonts} caching recipe
	**/
	static function googleFontsCache(?options:workbox_recipes.googlefontscache.GoogleFontCacheOptions):Void;
	/**
		An implementation of the [image caching recipe]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#caching_images}
	**/
	static function imageCache(?options:workbox_recipes.imagecache.ImageCacheOptions):Void;
	/**
		An implementation of the [CSS and JavaScript files recipe]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#cache_css_and_javascript_files}
	**/
	static function staticResourceCache(?options:workbox_recipes.staticresourcecache.StaticResourceOptions):Void;
	/**
		An implementation of a page caching recipe with a network timeout
	**/
	static function pageCache(?options:workbox_recipes.pagecache.ImageCacheOptions):Void;
	/**
		An implementation of the [comprehensive fallbacks recipe]{@link https://developers.google.com/web/tools/workbox/guides/advanced-recipes#comprehensive_fallbacks}. Be sure to include the fallbacks in your precache injection
	**/
	static function offlineFallback(?options:workbox_recipes.offlinefallback.OfflineFallbackOptions):Void;
	static function warmStrategyCache(options:workbox_recipes.warmstrategycache.WarmStrategyCacheOptions):Void;
}