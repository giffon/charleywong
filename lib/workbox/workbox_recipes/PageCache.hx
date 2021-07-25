package workbox_recipes;

@:jsRequire("workbox-recipes/pageCache") @valueModuleOnly extern class PageCache {
	/**
		An implementation of a page caching recipe with a network timeout
	**/
	static function pageCache(?options:workbox_recipes.pagecache.ImageCacheOptions):Void;
}