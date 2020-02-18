import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestPostDeployment extends utest.Test {
    function testPagesAccessible():Void {
        var nocache = Std.random(1000); // avoid cloudflare cache
        validateUrl('https://charleywong.giffon.io?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/list/all?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/list/all.json?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/search/giffon?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/search/giffon.json?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/giffon.io?nocache=${nocache}');
        validateUrl('https://charleywong.giffon.io/giffon.io.json?nocache=${nocache}');
    }

    function validateUrl(url:String, ?pos:PosInfos) {
        switch (Utils.isUrlAccessible(url)) {
            case Success(_):
                Assert.pass();
            case Failure(err):
                Assert.fail('$url is not accessible.\n${err}', pos);
        }
    }
}