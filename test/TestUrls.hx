import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestUrls extends utest.Test {
    function testWebpageUrls():Void {
        for (entity in EntityIndex.entities) {
            for (page in entity.webpages) {
                validateUrl(page.url);
            }
        }
    }

    function testPostUrls():Void {
        for (entity in EntityIndex.entities) {
            for (post in entity.posts) {
                validateUrl(post.url);
            }
        }
    }

    function validateUrl(url:String, ?pos:PosInfos) {
        var code = -1;
        var err = null;
        for (i in 0...3) {
            var p = new sys.io.Process("curl", [
                "-sSLkf", url,
                "-o", "/dev/null",
                "--retry", "5",
                "--connect-timeout", "10",
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
        Assert.equals(0, code, '$url is not accessible.\n${err}', pos);
    }
}