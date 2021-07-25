package workbox_core;

typedef WorkboxPluginCallbackParam = {
	var cacheDidUpdate : CacheDidUpdateCallbackParam;
	var cachedResponseWillBeUsed : CachedResponseWillBeUsedCallbackParam;
	var cacheKeyWillBeUsed : CacheKeyWillBeUsedCallbackParam;
	var cacheWillUpdate : CacheWillUpdateCallbackParam;
	var fetchDidFail : FetchDidFailCallbackParam;
	var fetchDidSucceed : FetchDidSucceedCallbackParam;
	var handlerDidComplete : HandlerDidCompleteCallbackParam;
	var handlerDidError : HandlerDidErrorCallbackParam;
	var handlerDidRespond : HandlerDidRespondCallbackParam;
	var handlerWillRespond : HandlerWillRespondCallbackParam;
	var handlerWillStart : HandlerWillStartCallbackParam;
	var requestWillFetch : RequestWillFetchCallbackParam;
};