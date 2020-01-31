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

    function testIdUniqueness():Void {
        var ids = new Map<String, String>();
        for (entityClassName => entity in EntityIndex.entities) {
            Assert.isFalse(ids.exists(entity.id), '${entity.id} exists in both ${entityClassName} and ${ids[entity.id]}.');
            ids[entity.id] = entityClassName;
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

    function testWebpagesUrlUniqueness():Void {
        var urls = new Map<String, Entity>();
        for (entityClassName => entity in EntityIndex.entities) {
            for (page in entity.webpages) {
                var e = urls[page.url];
                Assert.isTrue(e == null, '${page.url} exists in both ${entity.id} and ${e == null ? null : e.id}}.');
                urls[page.url] = entity;
            }
        }
    }

    function testPostsUrlUniqueness():Void {
        for (entityClassName => entity in EntityIndex.entities) {
            var urls = new Map<String, Entity>();
            for (post in entity.posts) {
                var e = urls[post.url];
                Assert.isTrue(e == null, 'Duplicated ${post.url} in ${entity.id}.');
                urls[post.url] = entity;
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

    function testTags() {
        for (entity in EntityIndex.entities) {
            Assert.isTrue(entity.tags.length > 0, '${entity} has no tags.');
        }
    }
}