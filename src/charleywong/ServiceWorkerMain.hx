package charleywong;

import js.html.URLSearchParams;
import workbox_core.*;
import workbox_cacheable_response.*;
import workbox_strategies.*;
import workbox_expiration.*;
using StringTools;

class ServiceWorkerMain {
	static function main() {
		WorkboxNavigationPreload.enable();
		WorkboxRouting.setDefaultHandler(new NetworkFirst());
		WorkboxRouting.registerRoute((options:RouteMatchCallbackOptions) -> {
			options.url.pathname == "/";
		}, new StaleWhileRevalidate({
			cacheName: "index",
			plugins: cast ([
				new CacheableResponsePlugin({
					statuses: [0, 200],
				}),
				new ExpirationPlugin({
					maxAgeSeconds: 86400, // 1 day
				}),
			]:Array<Dynamic>),
		}));
		WorkboxRouting.registerRoute((options:RouteMatchCallbackOptions) -> {
            StaticResource.parseUrl(options.url.pathname) != null;
        }, cast new CacheFirst({
            cacheName: "static",
            plugins: ([
                new CacheableResponsePlugin({
                    statuses: [0, 200],
                }),
                new ExpirationPlugin({
                    maxEntries: 60,
                }),
            ]:Array<Dynamic>),
        }));
		WorkboxRouting.registerRoute(function(options:RouteMatchCallbackOptions) {
			if (switch options.request.destination {
				case FONT | IMAGE | SCRIPT | STYLE:
					var url = options.request.url;
					url.startsWith("https://cdn.jsdelivr.net/") ||
					url.startsWith("https://fonts.googleapis.com/") ||
					url.startsWith("https://fonts.gstatic.com/");
				case _:
					false;
			}) return true;

			return false;
		}, new CacheFirst({
			cacheName: "external_static",
			plugins: ([
				new CacheableResponsePlugin({
					statuses: [0, 200],
				}),
				new ExpirationPlugin({
					maxEntries: 60,
				}),
			]:Array<Dynamic>),
		}));
	}
}
