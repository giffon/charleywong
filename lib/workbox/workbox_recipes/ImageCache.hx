package workbox_recipes;

@:jsRequire("workbox-recipes/imageCache") @valueModuleOnly extern class ImageCache {
	/**
		An implementation of the [image caching recipe]{@link https://developers.google.com/web/tools/workbox/guides/common-recipes#caching_images}
	**/
	static function imageCache(?options:workbox_recipes.imagecache.ImageCacheOptions):Void;
}