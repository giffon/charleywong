package workbox_recipes;

@:jsRequire("workbox-recipes/staticResourceCache") @valueModuleOnly extern class StaticResourceCache {
	/**
		An implementation of the [CSS and JavaScript files recipe]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#cache_css_and_javascript_files}
	**/
	static function staticResourceCache(?options:workbox_recipes.staticresourcecache.StaticResourceOptions):Void;
}