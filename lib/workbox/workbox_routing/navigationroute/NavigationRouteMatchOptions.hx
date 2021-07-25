package workbox_routing.navigationroute;

typedef NavigationRouteMatchOptions = {
	@:optional
	var allowlist : Array<js.lib.RegExp>;
	@:optional
	var denylist : Array<js.lib.RegExp>;
};