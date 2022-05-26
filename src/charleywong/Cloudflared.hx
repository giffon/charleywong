package charleywong;

import js.lib.Promise;
import CrossFetch.fetch;

class Cloudflared {
    static public function getHostname(metricsUrl:String):Promise<String> {
        return fetch(metricsUrl)
            .then(r -> r.text())
            .then(txt -> {
                final r = ~/cloudflared_tunnel_user_hostnames_counts\{userHostname="(.+)"\}/;
                if (!r.match(txt)) {
                    trace(txt);
                    throw "Metric not found: cloudflared_tunnel_user_hostnames_counts";
                }
                r.matched(1);
            });
    }
}