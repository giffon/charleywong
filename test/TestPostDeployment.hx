import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestPostDeployment extends utest.Test {
    public final host:String;
    public function new(host:String):Void {
        super();
        this.host = host;
    }

    function testPagesAccessible():Void {
        var nocache = Std.random(1000); // avoid cloudflare cache
        validateUrl('https://${host}?nocache=${nocache}');
        validateUrl('https://${host}/list/all?nocache=${nocache}');
        validateUrl('https://${host}/list/all.json?nocache=${nocache}');
        validateUrl('https://${host}/search/giffon?nocache=${nocache}');
        validateUrl('https://${host}/search/giffon.json?nocache=${nocache}');
        validateUrl('https://${host}/giffon.io?nocache=${nocache}');
        validateUrl('https://${host}/giffon.io.json?nocache=${nocache}');
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