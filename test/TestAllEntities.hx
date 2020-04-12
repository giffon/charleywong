import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestAllEntities extends utest.Test {
    final index:EntityIndex;
    public function new(index:EntityIndex) {
        super();
        this.index = index;
    }

    function testEntityIndex() {
        Assert.isFalse(index.entities.empty());
        Assert.isFalse(index.entitiesOfUrl.empty());
        Assert.isFalse(index.entitiesOfFbPage.empty());
        Assert.isFalse(index.entitiesOfId.empty());
    }

    function testFileName() {
        for (file => entity in index.entities) {
            Assert.equals(file, 'data/entity/${entity.id}.json');
        }
    }

    function testIdUniqueness():Void {
        var ids = new Map<String, String>();
        for (file => entity in index.entities) {
            var id = entity.id.toLowerCase(); // id should be case insensitive since it is used as file name
            Assert.isFalse(ids.exists(id), '${entity.id} exists in both ${file} and ${ids[id]}.');
            ids[id] = file;
        }

        //alias should not overlap with id too
        for (file => entity in index.entities)
        if (entity.alias != null)
        {
            for (id in entity.alias) {
                var id = id.toLowerCase(); // id should be case insensitive since it is used as file name
                Assert.isFalse(ids.exists(id), '${entity.id} exists in both ${file} and ${ids[id]}.');
                ids[id] = file;
            }
        }
    }

    function testIdFormat():Void {
        var regexp = ~/^[A-Za-z0-9\.\-_]+$/;
        var reserved = [
            "flexsearch",  // https://charleywong.giffon.io/flexsearch.json
        ];
        for (id => e in index.entitiesOfId) {
            Assert.isTrue(regexp.match(id), '$id is not valid.');
            Assert.isFalse(reserved.has(id));
        }
    }

    function testWebpagesUrlUniqueness():Void {
        var urls = new Map<String, Entity>();
        for (file => entity in index.entities) {
            for (page in entity.webpages) {
                var e = urls[page.url];
                Assert.isTrue(e == null, '${page.url} exists in both ${entity.id} and ${e == null ? null : e.id}}.');
                urls[page.url] = entity;
            }
        }
    }

    function testPostsUrlUniqueness():Void {
        for (file => entity in index.entities) {
            var urls = new Map<String, Entity>();
            for (post in entity.posts) {
                var e = urls[post.url];
                Assert.isTrue(e == null, 'Duplicated ${post.url} in ${entity.id}.');
                urls[post.url] = entity;
            }
        }
    }

    function testFbUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www\.)?facebook\.com\/(.+?)\/?$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.facebook.com/${regexp.matched(1)}/', page.url);
        }
    }

    function testIgUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www\.)?instagram\.com\/(.+?)\/?$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.equals('https://www.instagram.com/${regexp.matched(1)}/', page.url);
        }
    }

    function testYoutubeUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www\.|m\.)?(?:youtube\.com|youtu\.be)/;
        var valid = ~/^https:\/\/www\.youtube\.com\/channel\/UC[A-z0-9\-_]+$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.isTrue(valid.match(page.url), '${page.url} is of invalid format');
        }
    }

    function testTwitterUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www\.|m\.|mobile\.)?(?:twitter\.com)/;
        var valid = ~/^https:\/\/twitter\.com\/[A-z0-9_]+$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.isTrue(valid.match(page.url), '${page.url} is of invalid format');
        }
    }

    function testTwitchUrlFormat() {
        var regexp = ~/^https?:\/\/(?:www\.)?(?:twitch\.tv)/;
        var valid = ~/^https:\/\/www\.twitch\.tv\/[A-z0-9_]+$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.isTrue(valid.match(page.url), '${page.url} is of invalid format');
        }
    }

    function testTelegramUrlFormat() {
        var regexp = ~/^https?:\/\/(?:t\.me)/;
        var valid = ~/^https:\/\/t\.me\/[A-z0-9_]+$/;
        for (entity in index.entities) {
            for (page in entity.webpages)
            if (regexp.match(page.url))
            Assert.isTrue(valid.match(page.url), '${page.url} is of invalid format');
        }
    }

    function testTags() {
        for (file => entity in index.entities) {
            Assert.isTrue(entity.tags.length > 0, '${file} has no tags.');

            if ([for (t in entity.tags) if (t == null) t].count() > 0) {
                Assert.fail('${file} has unknown tag.');
            } else {
                Assert.equals(entity.tags.length, [for (t in entity.tags) t.id => t].count(), '${file} has duplicated tags.');
            }
        }
    }

    function testNumWebpages() {
        for (file => entity in index.entities) {
            Assert.isTrue(entity.webpages.filter(p -> p.hidden != true).length <= 8, '${file} has too many webpages, hide some?');
        }
    }
}