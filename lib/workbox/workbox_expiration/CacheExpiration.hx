package workbox_expiration;

/**
	The `CacheExpiration` class allows you define an expiration and / or
	limit on the number of responses stored in a
	[`Cache`](https://developer.mozilla.org/en-US/docs/Web/API/Cache).
**/
@:jsRequire("workbox-expiration", "CacheExpiration") extern class CacheExpiration {
	/**
		To construct a new CacheExpiration instance you must provide at least
		one of the `config` properties.
	**/
	function new(cacheName:String, ?config:CacheExpirationConfig);
	private var _isRunning : Dynamic;
	private var _rerunRequested : Dynamic;
	@:optional
	private final _maxEntries : Dynamic;
	@:optional
	private final _maxAgeSeconds : Dynamic;
	@:optional
	private final _matchOptions : Dynamic;
	private final _cacheName : Dynamic;
	private final _timestampModel : Dynamic;
	/**
		Expires entries for the given cache and given criteria.
	**/
	function expireEntries():js.lib.Promise<Void>;
	/**
		Update the timestamp for the given URL. This ensures the when
		removing entries based on maximum entries, most recently used
		is accurate or when expiring, the timestamp is up-to-date.
	**/
	function updateTimestamp(url:String):js.lib.Promise<Void>;
	/**
		Can be used to check if a URL has expired or not before it's used.
		
		This requires a look up from IndexedDB, so can be slow.
		
		Note: This method will not remove the cached entry, call
		`expireEntries()` to remove indexedDB and Cache entries.
	**/
	function isURLExpired(url:String):js.lib.Promise<Bool>;
	/**
		Removes the IndexedDB object store used to keep track of cache expiration
		metadata.
	**/
	function delete():js.lib.Promise<Void>;
	static var prototype : CacheExpiration;
}