package workbox_routing;

/**
	NavigationRoute makes it easy to create a
	[Route]{@link module:workbox-routing.Route} that matches for browser
	[navigation requests]{@link https://developers.google.com/web/fundamentals/primers/service-workers/high-performance-loading#first_what_are_navigation_requests}.
	
	It will only match incoming Requests whose
	[`mode`]{@link https://fetch.spec.whatwg.org/#concept-request-mode}
	is set to `navigate`.
	
	You can optionally only apply this route to a subset of navigation requests
	by using one or both of the `denylist` and `allowlist` parameters.
**/
@:jsRequire("workbox-routing", "NavigationRoute") extern class NavigationRoute extends Route {
	/**
		If both `denylist` and `allowlist` are provided, the `denylist` will
		take precedence and the request will not match this route.
		
		The regular expressions in `allowlist` and `denylist`
		are matched against the concatenated
		[`pathname`]{@link https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils/pathname}
		and [`search`]{@link https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils/search}
		portions of the requested URL.
	**/
	function new(handler:workbox_core.RouteHandler, ?__1:workbox_routing.navigationroute.NavigationRouteMatchOptions);
	private final _allowlist : Dynamic;
	private final _denylist : Dynamic;
	/**
		Routes match handler.
	**/
	private var _match : Dynamic;
	static var prototype : NavigationRoute;
}