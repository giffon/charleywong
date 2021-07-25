package workbox_expiration;

typedef CacheExpirationConfig = {
	@:optional
	var maxEntries : Float;
	@:optional
	var maxAgeSeconds : Float;
	@:optional
	var matchOptions : js.html.CacheQueryOptions;
};