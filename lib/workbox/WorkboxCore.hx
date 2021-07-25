@:jsRequire("workbox-core") @valueModuleOnly extern class WorkboxCore {
	/**
		Get the current cache names and prefix/suffix used by Workbox.
		
		`cacheNames.precache` is used for precached assets,
		`cacheNames.googleAnalytics` is used by `workbox-google-analytics` to
		store `analytics.js`, and `cacheNames.runtime` is used for everything else.
		
		`cacheNames.prefix` can be used to retrieve just the current prefix value.
		`cacheNames.suffix` can be used to retrieve just the current suffix value.
	**/
	static final cacheNames : {
		final googleAnalytics : String;
		final precache : String;
		final prefix : String;
		final runtime : String;
		final suffix : String;
	};
	/**
		Claim any currently available clients once the service worker
		becomes active. This is normally used in conjunction with `skipWaiting()`.
	**/
	static function clientsClaim():Void;
	/**
		Allows developers to copy a response and modify its `headers`, `status`,
		or `statusText` values (the values settable via a
		[`ResponseInit`]{@link https://developer.mozilla.org/en-US/docs/Web/API/Response/Response#Syntax}
		object in the constructor).
		To modify these values, pass a function as the second argument. That
		function will be invoked with a single object with the response properties
		`{headers, status, statusText}`. The return value of this function will
		be used as the `ResponseInit` for the new `Response`. To change the values
		either modify the passed parameter(s) and return it, or return a totally
		new object.
		
		This method is intentionally limited to same-origin responses, regardless of
		whether CORS was used or not.
	**/
	static function copyResponse(response:js.html.Response, ?modifier:(responseInit:js.html.ResponseInit) -> js.html.ResponseInit):js.lib.Promise<js.html.Response>;
	/**
		Adds a function to the set of quotaErrorCallbacks that will be executed if
		there's a quota error.
	**/
	static function registerQuotaErrorCallback(callback:haxe.Constraints.Function):Void;
	/**
		Modifies the default cache names used by the Workbox packages.
		Cache names are generated as `<prefix>-<Cache Name>-<suffix>`.
	**/
	static function setCacheNameDetails(details:workbox_core._private.cachenames.PartialCacheNameDetails):Void;
	/**
		This method is deprecated, and will be removed in Workbox v7.
		
		Calling self.skipWaiting() is equivalent, and should be used instead.
	**/
	static function skipWaiting():Void;
}