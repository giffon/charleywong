import utest.Assert;
import withyoulike.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestAllEntities extends utest.Test {
    static final entityClasses:ReadOnlyArray<Class<Dynamic>> = CompileTime.getAllClasses("withyoulike.entities", true, Entity).array();

    function testUrlAccessibility():Void {
        Assert.isTrue(entityClasses.length > 0);
        for (entityClass in entityClasses) {
            var entity:Entity = Type.createInstance(entityClass, []);
            for (page in entity.webpages) {
                validateUrl(page.url);
            }
            for (post in entity.posts) {
                validateUrl(post.url);
            }
        }
        Assert.pass();
    }

    function testUrlUniqueness():Void {
        Assert.isTrue(entityClasses.length > 0);
        var url = new Map<String, Class<Dynamic>>();
        for (entityClass in entityClasses) {
            var entity:Entity = Type.createInstance(entityClass, []);
            for (page in entity.webpages) {
                if (url.exists(page.url)) {
                    throw '$url exists in both ${Type.getClassName(entityClass)} and ${Type.getClassName(url[page.url])}.';
                }
            }
        }
        Assert.pass();
    }

    function testFbUrlFormat() {
        Assert.isTrue(entityClasses.length > 0);
        var regexp = ~/^https?:\/\/(?:www.)?facebook.com\/(.+?)\/?$/;
        for (entityClass in entityClasses) {
            var entity:Entity = Type.createInstance(entityClass, []);
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.facebook.com/${regexp.matched(1)}/', page.url);
        }
    }

    static public function validateUrl(url:String) {
        var p = new sys.io.Process("curl", ["-sSLf", url, "-o", "/dev/null"]);
        var code = p.exitCode();
        var err = p.stderr.readAll().toString().rtrim();
        p.close();
        switch (code) {
            case 0: //pass
            case _: throw '$url is not accessible.\n${err}';
        }
    }
}