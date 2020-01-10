import haxe.PosInfos;
import utest.Assert;
import withyoulike.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestAllEntities extends utest.Test {
    function testEntityIndex() {
        Assert.isFalse(EntityIndex.entities.empty());
        Assert.isFalse(EntityIndex.entitiesOfUrl.empty());
        Assert.isFalse(EntityIndex.entitiesOfFbPage.empty());
    }

    function testUrlAccessibility():Void {
        for (entity in EntityIndex.entities) {
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
        var url = new Map<String, Class<Dynamic>>();
        for (entityClassName => entity in EntityIndex.entities) {
            for (page in entity.webpages) {
                if (url.exists(page.url)) {
                    throw '$url exists in both ${entityClassName} and ${Type.getClassName(url[page.url])}.';
                }
            }
        }
        Assert.pass();
    }

    function testFbUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www.)?facebook.com\/(.+?)\/?$/;
        for (entity in EntityIndex.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.facebook.com/${regexp.matched(1)}/', page.url);
        }
    }

    function validateUrl(url:String, ?pos:PosInfos) {
        var p = new sys.io.Process("curl", ["-sSLf", url, "-o", "/dev/null", "--retry", "3"]);
        var code = p.exitCode();
        var err = p.stderr.readAll().toString().rtrim();
        p.close();
        Assert.equals(0, code, '$url is not accessible.\n${err}', pos);
    }
}