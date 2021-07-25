package workbox_recipes;

@:jsRequire("workbox-recipes/offlineFallback") @valueModuleOnly extern class OfflineFallback {
	/**
		An implementation of the [comprehensive fallbacks recipe]{@link https://developers.google.com/web/tools/workbox/guides/advanced-recipes#comprehensive_fallbacks}. Be sure to include the fallbacks in your precache injection
	**/
	static function offlineFallback(?options:workbox_recipes.offlinefallback.OfflineFallbackOptions):Void;
}