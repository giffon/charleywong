import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestUrls extends utest.Test {
    final index:EntityIndex;
    public function new(index:EntityIndex) {
        super();
        this.index = index;
    }

    @Ignored
    function testWebpageUrls():Void {
        for (entity in index.entities) {
            for (page in entity.webpages) {
                validateUrl(page.url);
            }
        }
    }

    function testPostUrls():Void {
        for (entity in index.entities) {
            for (post in entity.posts) {
                validateUrl(post.url);
            }
        }
    }

    function validateUrl(url:String, ?pos:PosInfos) {
        switch (Utils.isUrlAccessible(url)) {
            case Success(_):
                Assert.pass();
            case Failure(err):
                if (err.contains("503 Service Temporarily Unavailable")) {
                    Sys.println('$url is 503 Service Temporarily Unavailable');
                    Assert.pass();
                } else if (err.contains("The requested URL returned error: 429")) {
                    Sys.println(err);
                    Assert.pass();
                } else {
                    Assert.fail('$url is not accessible.\n${err}', pos);
                }
        }
    }
}