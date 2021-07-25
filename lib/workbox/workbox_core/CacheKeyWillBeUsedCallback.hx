package workbox_core;

typedef CacheKeyWillBeUsedCallback = (param:CacheKeyWillBeUsedCallbackParam) -> js.lib.Promise<ts.AnyOf2<String, js.html.Request>>;