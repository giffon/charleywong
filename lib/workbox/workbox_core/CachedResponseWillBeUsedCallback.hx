package workbox_core;

typedef CachedResponseWillBeUsedCallback = (param:CachedResponseWillBeUsedCallbackParam) -> js.lib.Promise<Null<ts.AnyOf2<Void, js.html.Response>>>;