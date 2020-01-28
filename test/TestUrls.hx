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
        switch (Utils.isUrlAccessible(url)) {
            case Success(_):
                Assert.pass();
            case Failure(err):
                if (err.contains("503 Service Temporarily Unavailable")) {
                    Assert.warn('$url is 503 Service Temporarily Unavailable');
                } else {
                    Assert.fail('$url is not accessible.\n${err}', pos);
                }
        }
    }
}