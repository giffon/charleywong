package workbox_strategies.networkfirst;

typedef NetworkFirstOptions = {
	@:optional
	var networkTimeoutSeconds : Float;
	@:optional
	var cacheName : String;
	@:optional
	var plugins : Array<workbox_core.WorkboxPlugin>;
	@:optional
	var fetchOptions : js.html.RequestInit;
	@:optional
	var matchOptions : js.html.CacheQueryOptions;
};