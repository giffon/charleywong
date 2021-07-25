package workbox_core;

/**
	An object with optional lifecycle callback properties for the fetch and
	cache operations.
**/
typedef WorkboxPlugin = {
	@:optional
	dynamic function cacheDidUpdate(param:CacheDidUpdateCallbackParam):js.lib.Promise<Null<Void>>;
	@:optional
	dynamic function cachedResponseWillBeUsed(param:CachedResponseWillBeUsedCallbackParam):js.lib.Promise<Null<ts.AnyOf2<Void, js.html.Response>>>;
	@:optional
	dynamic function cacheKeyWillBeUsed(param:CacheKeyWillBeUsedCallbackParam):js.lib.Promise<ts.AnyOf2<String, js.html.Request>>;
	@:optional
	dynamic function cacheWillUpdate(param:CacheWillUpdateCallbackParam):js.lib.Promise<Null<ts.AnyOf2<Void, js.html.Response>>>;
	@:optional
	dynamic function fetchDidFail(param:FetchDidFailCallbackParam):js.lib.Promise<Null<Void>>;
	@:optional
	dynamic function fetchDidSucceed(param:FetchDidSucceedCallbackParam):js.lib.Promise<js.html.Response>;
	@:optional
	dynamic function handlerDidComplete(param:HandlerDidCompleteCallbackParam):js.lib.Promise<Null<Void>>;
	@:optional
	dynamic function handlerDidError(param:HandlerDidErrorCallbackParam):js.lib.Promise<Null<js.html.Response>>;
	@:optional
	dynamic function handlerDidRespond(param:HandlerDidRespondCallbackParam):js.lib.Promise<Null<Void>>;
	@:optional
	dynamic function handlerWillRespond(param:HandlerWillRespondCallbackParam):js.lib.Promise<js.html.Response>;
	@:optional
	dynamic function handlerWillStart(param:HandlerWillStartCallbackParam):js.lib.Promise<Null<Void>>;
	@:optional
	dynamic function requestWillFetch(param:RequestWillFetchCallbackParam):js.lib.Promise<js.html.Request>;
};