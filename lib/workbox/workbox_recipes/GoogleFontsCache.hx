package workbox_recipes;

@:jsRequire("workbox-recipes/googleFontsCache") @valueModuleOnly extern class GoogleFontsCache {
	/**
		An implementation of the [Google fonts]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#google_fonts} caching recipe
	**/
	static function googleFontsCache(?options:workbox_recipes.googlefontscache.GoogleFontCacheOptions):Void;
}