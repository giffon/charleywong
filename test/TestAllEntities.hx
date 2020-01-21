import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestAllEntities extends utest.Test {
    function testEntityIndex() {
        Assert.isFalse(EntityIndex.entities.empty());
        Assert.isFalse(EntityIndex.entitiesOfUrl.empty());
        Assert.isFalse(EntityIndex.entitiesOfFbPage.empty());
        Assert.isFalse(EntityIndex.entitiesOfId.empty());
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
    }

    function testIdUniqueness():Void {
        var id = new Map<String, Class<Dynamic>>();
        for (entityClassName => entity in EntityIndex.entities) {
            Assert.isFalse(id.exists(entity.id), '$id exists in both ${entityClassName} and ${Type.getClassName(id[entity.id])}.');
        }
    }

    function testIdFormat():Void {
        var regexp = ~/^[A-Za-z0-9\.\-_]+$/;
        var reserved = [
            "flexsearch",  // https://charleywong.giffon.io/flexsearch.json
        ];
        for (id => e in EntityIndex.entitiesOfId) {
            Assert.isTrue(regexp.match(id), '$id is not valid.');
            Assert.isFalse(reserved.has(id));
        }
    }

    function testUrlUniqueness():Void {
        var url = new Map<String, Class<Dynamic>>();
        for (entityClassName => entity in EntityIndex.entities) {
            for (page in entity.webpages) {
                Assert.isFalse(url.exists(page.url), '$url exists in both ${entityClassName} and ${Type.getClassName(url[page.url])}.');
            }
        }
    }

    function testFbUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www.)?facebook.com\/(.+?)\/?$/;
        for (entity in EntityIndex.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.facebook.com/${regexp.matched(1)}/', page.url);
        }
    }

    function testIgUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www.)?instagram.com\/(.+?)\/?$/;
        for (entity in EntityIndex.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.instagram.com/${regexp.matched(1)}/', page.url);
        }
    }

    function validateUrl(url:String, ?pos:PosInfos) {
        var p = new sys.io.Process("curl", [
            "-sSLf", url,
            "-o", "/dev/null",
            "--retry", "3",
            "-A", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"
        ]);
        var code = p.exitCode();
        var err = p.stderr.readAll().toString().rtrim();
        p.close();
        Assert.equals(0, code, '$url is not accessible.\n${err}', pos);
    }
}