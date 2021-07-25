package workbox_expiration;

/**
	This plugin can be used in a `workbox-strategy` to regularly enforce a
	limit on the age and / or the number of cached requests.
	
	It can only be used with `workbox-strategy` instances that have a
	[custom `cacheName` property set](/web/tools/workbox/guides/configure-workbox#custom_cache_names_in_strategies).
	In other words, it can't be used to expire entries in strategy that uses the
	default runtime cache name.
	
	Whenever a cached request is used or updated, this plugin will look
	at the associated cache and remove any old or extra requests.
	
	When using `maxAgeSeconds`, requests may be used *once* after expiring
	because the expiration clean up will not have occurred until *after* the
	cached request has been used. If the request has a "Date" header, then
	a light weight expiration check is performed and the request will not be
	used immediately.
	
	When using `maxEntries`, the entry least-recently requested will be removed
	from the cache first.
**/
@:jsRequire("workbox-expiration", "ExpirationPlugin") extern class ExpirationPlugin {
	function new(?config:{ @:optional var maxEntries : Float; @:optional var maxAgeSeconds : Float; @:optional var matchOptions : js.html.CacheQueryOptions; @:optional var purgeOnQuotaError : Bool; });
	private final _config : Dynamic;
	@:optional
	private final _maxAgeSeconds : Dynamic;
	private var _cacheExpirations : Dynamic;
	/**
		A simple helper method to return a CacheExpiration instance for a given
		cache name.
	**/
	private var _getCacheExpiration : Dynamic;
	/**
		A "lifecycle" callback that will be triggered automatically by the
		`workbox-strategies` handlers when a `Response` is about to be returned
		from a [Cache](https://developer.mozilla.org/en-US/docs/Web/API/Cache) to
		the handler. It allows the `Response` to be inspected for freshness and
		prevents it from being used if the `Response`'s `Date` header value is
		older than the configured `maxAgeSeconds`.
	**/
	@:optional
	dynamic function cachedResponseWillBeUsed(param:workbox_core.CachedResponseWillBeUsedCallbackParam):js.lib.Promise<Null<ts.AnyOf2<Void, js.html.Response>>>;
	private var _isResponseDateFresh : Dynamic;
	/**
		This method will extract the data header and parse it into a useful
		value.
	**/
	private var _getDateHeaderTimestamp : Dynamic;
	/**
		A "lifecycle" callback that will be triggered automatically by the
		`workbox-strategies` handlers when an entry is added to a cache.
	**/
	@:optional
	dynamic function cacheDidUpdate(param:workbox_core.CacheDidUpdateCallbackParam):js.lib.Promise<Null<Void>>;
	/**
		This is a helper method that performs two operations:
		
		- Deletes *all* the underlying Cache instances associated with this plugin
		instance, by calling caches.delete() on your behalf.
		- Deletes the metadata from IndexedDB used to keep track of expiration
		details for each Cache instance.
		
		When using cache expiration, calling this method is preferable to calling
		`caches.delete()` directly, since this will ensure that the IndexedDB
		metadata is also cleanly removed and open IndexedDB instances are deleted.
		
		Note that if you're *not* using cache expiration for a given cache, calling
		`caches.delete()` and passing in the cache's name should be sufficient.
		There is no Workbox-specific method needed for cleanup in that case.
	**/
	function deleteCacheAndMetadata():js.lib.Promise<Void>;
	static var prototype : ExpirationPlugin;
}