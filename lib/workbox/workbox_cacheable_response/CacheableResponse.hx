package workbox_cacheable_response;

/**
	This class allows you to set up rules determining what
	status codes and/or headers need to be present in order for a
	[`Response`](https://developer.mozilla.org/en-US/docs/Web/API/Response)
	to be considered cacheable.
**/
@:jsRequire("workbox-cacheable-response", "CacheableResponse") extern class CacheableResponse {
	/**
		To construct a new CacheableResponse instance you must provide at least
		one of the `config` properties.
		
		If both `statuses` and `headers` are specified, then both conditions must
		be met for the `Response` to be considered cacheable.
	**/
	function new(?config:workbox_cacheable_response.cacheableresponse.CacheableResponseOptions);
	@:optional
	private final _statuses : Dynamic;
	@:optional
	private final _headers : Dynamic;
	/**
		Checks a response to see whether it's cacheable or not, based on this
		object's configuration.
	**/
	function isResponseCacheable(response:js.html.Response):Bool;
	static var prototype : CacheableResponse;
}