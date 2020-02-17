package charleywong;

import tink.core.*;
using StringTools;

class Utils {
    static public function prettyUrl(url:String):String {
        var r = ~/^https?:\/\/(?:www\.)?/;
        var shortUrl = if (r.match(url)) {
            url.substr(r.matchedPos().len);
        } else {
            url;
        };
        return shortUrl.urlDecode();
    }

    #if nodejs
    static public function isUrlAccessible(url:String):js.lib.Promise<Int> {
        return js.npm.fetch.Fetch.fetch(url)
            .then(r -> r.status);
    }
    #else
    static public function isUrlAccessible(url:String):Outcome<Int, String> {
        var code = -1;
        var err = null;
        for (i in 0...3) {
            var p = new sys.io.Process("curl", [
                "-sSLkf", url,
                "-o", "/dev/null",
                "--retry", "3",
                "--connect-timeout", "30",
                "--http1.0",
                "-A", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
            ]);
            code = p.exitCode();
            err = p.stderr.readAll().toString().rtrim();
            p.close();
            if (code != 0) {
                Sys.sleep(1);
            } else {
                break;
            }
        }
        return if (code == 0) {
            Success(code);
        } else {
            Failure(err);
        }
    }
    #end
}