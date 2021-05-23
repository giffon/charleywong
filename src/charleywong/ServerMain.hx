package charleywong;

import sys.FileSystem;
import js.npm.fetch.Fetch;
import js.npm.hk_address_parser_lib.Dclookup;
import js.lib.Promise;
import js.npm.jimp.Jimp;
import js.node.Buffer;
import Fastify;
import fastify.*;
import sys.io.File;
import js.html.URL;
import haxe.*;
import charleywong.views.*;
import js.Node.*;
import charleywong.UrlExtractors.*;
using charleywong.EntityTools;
using charleywong.ReplyTools;
using StringTools;
using Lambda;

typedef Request = FastifyRequest<Dynamic,Dynamic,Dynamic>;
typedef Reply = FastifyReply<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>;

class ServerMain {
    static final isMain = js.Syntax.code("require.main") == module;
    static public final domain = "https://charleywong.giffon.io";
    static public final dataDirectory = "data/entity";
    static public final exportedFlexsearch = "flexsearch.json";
    static public final entityIndex:EntityIndex = EntityIndex.loadFromDirectory(
        dataDirectory,
        if (FileSystem.exists(exportedFlexsearch))
            exportedFlexsearch
        else
            null
    );
    static public var app:FastifyInstance<Dynamic, Dynamic, Dynamic, Dynamic>;

    static function index(req:Request, reply:Reply):Promise<Dynamic> {
        var search:Null<String> = req.query.search;
        if (search != null) {
            return switch (search.trim()) {
                case "":
                    Promise.resolve(reply.redirect("/list/all"));
                case search:
                    Promise.resolve(reply.redirect("/search/" + search.urlEncode()));
            }
        }
        return Promise.resolve(reply.sendView(Index));
    }

    static function campaign(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.sendView(Campaign));
    }

    static function pageMooncake2020(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.sendView(Mooncake2020));
    }

    static function pageHkbaseDirectory(req:Request, reply:Reply):Promise<Dynamic> {
        var entities = HkbaseDirectory.localCache.map(d -> HkbaseDirectory.getEntity(d, entityIndex.entitiesOfHkbase)); // use the order of HKBASE directory
        return Promise.resolve(reply.sendView(HkbaseDirectoryView, {
            entities: entities,
        }));
    }

    static function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    static function all(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.sendView(EntityListView, {
            slug: "all",
            path: "list/all",
            listName: "全部 Charley Wong 和你查 商業/品牌",
            entities: {
                var entities = [
                    for (e in entityIndex.entities)
                    if (e.searchable())
                    e
                ];
                entities.sort((e1, e2) -> Reflect.compare(renderName(e1.name).toLowerCase(), renderName(e2.name).toLowerCase()));
                entities;
            }
        }));
    }

    static function allJson(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve([
            for (e in entityIndex.entities)
            if (e.searchable())
            e.id
        ]);
    }

    static function listEntities(req:Request, reply:Reply):Promise<Dynamic> {
        var name:String = req.params.name;
        var ids:String = req.params.entityIds;
        if (ids.endsWith(".json")) {
            var ids = ids.substr(0, -".json".length);
            var entities = [
                for (id in ids.split("+"))
                switch (entityIndex.entitiesOfId[id]) {
                    case null: throw 'Entity of id "$id" not found';
                    case e: e.fullInfo();
                }
            ];
            return Promise.resolve(entities);
        }
        var entities = [
            for (id in ids.split("+"))
            switch (entityIndex.entitiesOfId[id]) {
                case null: throw 'Entity of id "$id" not found';
                case e: e;
            }
        ];
        return Promise.resolve(reply.sendView(EntityListView, {
            slug: ids,
            path: haxe.io.Path.join(["list", name, ids]),
            listName: name,
            entities: entities,
        }));
    }

    static function entity(req:Request, reply:Reply):Promise<Dynamic> {
        var entityId:String = req.params.entityId;
        var returnJson = entityId.endsWith(".json");
        if (returnJson)
            entityId = entityId.substr(0, -".json".length);

        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            return Promise.resolve(reply.status(404).send('Entity of id $entityId not found.'));
        }

        if (entity.tags.has("removed")) {
            return Promise.resolve(reply.status(404).send('Entity of id $entityId not found.'));
        }

        if (entityId != entity.id) {
            return Promise.resolve(reply.redirect(entity.id + (returnJson ? ".json" : "")));
        }

        if (returnJson) {
            return Promise.resolve(entity.fullInfo());
        } else {
            return entity.fullPostMeta().then(entity -> {
                reply.sendView(EntityView, {
                    entity: entity,
                });
            }).catchError(e -> reply.status(500).send(e));
        }
    }

    static final noProfilePic = Promise.resolve(Buffer.from(File.getBytes("static/images/user-solid.png").getData()));
    static final font = Jimp.loadFont(Jimp.FONT_SANS_64_BLACK);

    static function getPicOfText(text:String):Promise<Buffer> {
        if (text == null || text.trim() == "") {
            return Jimp.create(1, 1, "#FFFFFF").then(img -> img.getBufferAsync(Jimp.MIME_PNG));
        }
        return font.then(function(font) {
            var tw = Jimp.measureText(font, text);
            var th = Jimp.measureTextHeight(font, text);
            var padding = 20;
            var size = Std.int(Math.max(tw, th) + padding + padding);
            return Jimp.create(size, size, "#FFFFFF")
                .then(function(img) {
                    return img
                        .print(font, padding, size * 0.5 - th * 0.5, text)
                        .getBufferAsync(Jimp.MIME_PNG);
                });
        });
    }

    static function getOgImage(url:String) {
        return Utils.getMeta(url)
            .then(meta -> {
                switch (meta.og.find(og -> og.property == "og:image")) {
                    case null:
                        throw "no og:image";
                    case {content: ogImageUrl}:
                        Fetch.fetch(ogImageUrl)
                            .then(r -> if (!r.ok) {
                                throw r.status;
                            } else {
                                r.buffer();
                            });
                }
            });
    }

    static function getPic(profileUrls:Array<String>, width:Int) {
        for (i => url in profileUrls) {
            switch (new URL(url)) {
                case extractFbHomePage(_) => fb if (fb != null):
                    return Fetch.fetch('https://graph.facebook.com/${Facebook.apiVersion}/${fb}/picture?type=square&width=${width}&height=${width}')
                        .then(r -> if (!r.ok) {
                            throw r.status;
                        } else if (r.url.endsWith(".gif")) {
                            throw "no profile pic set";
                        } else {
                            r.buffer();
                        })
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case extractIgProfilePage(_) => p if (p != null):
                    return getOgImage(url)
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case extractTelegramProfile(_) => p if (p != null):
                    return getOgImage(url)
                        .catchError(err -> {
                            getPic(profileUrls.slice(i+1), width);
                        });
                case _: //pass
            }
        }
        return Promise.reject(null);
    }

    static function getEntityPic(e:Entity, width:Int):Promise<Buffer> {
        var webpages = e.webpages.map(p -> p.url);
        // prefer facebook profile pic
        webpages.sort((a,b) -> switch [a.startsWith("https://www.facebook.com/"), b.startsWith("https://www.facebook.com/")] {
            case [true, false]: -1;
            case [false, true]: 1;
            case _: 0;
        });
        return getPic(webpages, width)
            .catchError(err -> getPicOfText(e.name[en]));
    }

    static public final entityProfilePicWidth = 1200;
    static public final entityProfilePicHeight = 630;

    static function entityProfilePic(req:Request, reply:Reply):Promise<Dynamic> {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            return Promise.resolve(reply.status(404).send('Entity of id $entityId not found.'));
        }

        var border = 46;
        var w = entityProfilePicHeight - border - border;
        return getEntityPic(entity, w)
            .then(function(pic) {
                var frame = "static/images/charley-wong-profile-cover.png";
                return Promise.all([Jimp.read(pic), Jimp.read(frame)])
                    .then(function(args) {
                        var pic:Jimp = args[0];
                        var frame:Jimp = args[1];
                        return Jimp.create(entityProfilePicWidth, entityProfilePicHeight, "#f4a948")
                            .then(img -> img
                                .composite(pic.resize(w, w), (entityProfilePicWidth - entityProfilePicHeight) * 0.5 + border, border)
                                .composite(frame, 0, 0)
                                .getBufferAsync(Jimp.MIME_PNG)
                            );
                    });
            })
            .then(buf -> reply
                .header("Content-Type", Jimp.MIME_PNG)
                .header("Cache-Control", "public, max-age=604800") // 7 days
                .send(buf)
            )
            .catchError(err ->
                reply.status(500).send(err)
            );
    }

    static function search(query:String, tags:Array<String>):Array<Entity> {
        var ids = (entityIndex.flexsearch.search([
            {
                field: "name:en",
                boost: 2,
                query: query,
                limit: Math.POSITIVE_INFINITY,
            },
            {
                field: "name:zh",
                boost: 2,
                query: query,
                limit: Math.POSITIVE_INFINITY,
            },
            {
                field: "tag:names",
                boost: 1,
                query: query,
                limit: Math.POSITIVE_INFINITY,
            },
        ]):Array<{id:String}>).map(r -> r.id);

        var metaResults:Array<{id:String}> = entityIndex.flexsearch.search([
            {
                field: "meta",
                query: query,
                limit: Math.POSITIVE_INFINITY,
            },
            {
                field: "hkbase",
                query: query,
                limit: Math.POSITIVE_INFINITY,
            },
        ]);
        for (id in metaResults.map(r -> r.id)) {
            if (!ids.has(id))
                ids.push(id);
        }
        return ids
            .map(id -> entityIndex.entitiesOfId[id])
            .filter(e -> e.searchable())
            .filter(e -> tags.foreach(t -> e.tags.exists(tid -> tid.id.toLowerCase() == t)));
    }

    static function searchHandler(req:Request, reply:Reply):Promise<Dynamic> {
        var query:String = req.params.query;
        if (query.endsWith(".json")) {
            var query = query.substr(0, -".json".length);
            return Promise.resolve(search(query, []).map(e -> e.fullInfo()));
        }
        switch (query.trim().toLowerCase()) {
            case "月餅" | "mooncake":
                return Promise.resolve(reply.redirect("/" + Mooncake2020.path));
            case "hkbase":
                return Promise.resolve(reply.redirect("/" + HkbaseDirectoryView.path));
            case _:
                //pass
        }
        var entities = search(query, []);
        var slug = query.urlEncode();
        return Promise.resolve(reply.sendView(EntityListView, {
            slug: slug,
            path: haxe.io.Path.join(["search", slug]),
            listName: '${query} 搜尋結果',
            searchQuery: query,
            entities: entities,
        }));
    }

    static function noTrailingSlash(req:Request, reply:Reply):Promise<Any> {
        var url = new node.url.URL(req.raw.url, "http://example.com");
        if (url.pathname.endsWith('/') && url.pathname.length > 1) {
            var redirectTo = url.pathname.substr(0, url.pathname.length-1) + url.search;
            reply.redirect(301, redirectTo);
        }
        return Promise.resolve();
    }

    static function getPost(url:String):Post {
        for (e in entityIndex.entities)
            for (p in e.posts)
                if (p.url == url)
                    return p;

        return null;
    }

    static function proxyPostImage(req:Request, reply:Reply):Promise<Dynamic> {
        var post:Null<String> = req.query.post;
        switch (getPost(post)) {
            case null:
                return Promise.resolve(reply.status(403).send('$post doesn\'t exist in the database.'));
            case post:
                return EntityTools.fullMeta(post).then(post -> {
                    if (post.meta == null) {
                        Promise.resolve(reply.status(404).send('$post doesn\'t provide "og:image".'));
                    } else {
                        switch(post.meta["og"]) {
                            case null:
                                Promise.resolve(reply.status(404).send('$post doesn\'t provide "og:image".'));
                            case og:
                                switch ((og:Array<{property:String, content:String}>).find(o -> o.property == "og:image")) {
                                    case null:
                                        Promise.resolve(reply.status(404).send('$post doesn\'t provide "og:image".'));
                                    case { content: imageUrl }:
                                        Fetch.fetch(Std.string(new URL(imageUrl)))
                                            .then(r -> {
                                                reply
                                                    .status(r.status)
                                                    .header("Content-Type", (cast r:js.html.Response).headers.get("Content-Type"))
                                                    .header("Cache-Control", "public, max-age=2628000"); // one month
                                                r.buffer();
                                            })
                                            .then(b -> reply.send(b))
                                            .catchError(err -> reply.status(500).send(err));
                                }
                        }
                    }
                });
        }
    }

    static function post(req:Request, reply:Reply):Promise<Dynamic> {
        var url = new URL(cleanUrl(req.body.url));
        switch (extractFbPost(url)) {
            case null:
                //pass
            case handle:
                switch (entityIndex.entitiesOfFbPage[handle]) {
                    case null:
                        return Promise.resolve(reply.status(500).send('${handle} has not been imported yet.'));
                    case e:
                        var postUrl = Std.string(url);
                        switch (e.posts.find(p -> p.url == postUrl)) {
                            case null:
                                e.posts.push({
                                    url: postUrl,
                                    meta: {
                                        "utime": req.body.utime,
                                        "sharedWith": req.body.sharedWith
                                    }
                                });
                            case post:
                                post.meta = {
                                    "utime": req.body.utime,
                                    "sharedWith": req.body.sharedWith
                                };
                        }
                        saveEntity(e, true, true);
                        return Promise.resolve(reply.status(200).send("done"));
                }
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                return createEntityFromFb(req.body)
                    .then(e -> {
                        saveEntity(e, true, true);
                        return Promise.resolve(reply.status(200).send("done"));
                    });
        }

        switch (extractIgPost(url)) {
            case null:
                //pass
            case post:
                var handle = req.body.igHandle;
                switch (entityIndex.entitiesOfUrl['https://www.instagram.com/$handle/']) {
                    case null:
                        return Promise.resolve(reply.status(500).send('${handle} has not been imported yet.'));
                    case e:
                        var postUrl = Std.string(url);
                        if (e.posts.exists(p -> p.url == postUrl)) {
                            return Promise.resolve(reply.status(500).send('${postUrl} already exists.'));
                        }
                        e.posts.push({
                            url: postUrl
                        });
                        saveEntity(e, true, true);
                        return Promise.resolve(reply.status(200).send("done"));
                }
        }

        switch (extractIgProfilePage(url)) {
            case null:
                //pass
            case handle:
                var e = createEntityFromIg(req.body);
                saveEntity(e, true, true);
                return Promise.resolve(reply.status(200).send("done"));
        }

        switch (extractYouTubeProfile(url)) {
            case null:
                //pass
            case Id(_) | Handle(_):
                var e = createEntityFromYt(req.body);
                saveEntity(e, true, true);
                return Promise.resolve(reply.status(200).send("done"));
        }

        return Promise.resolve(reply.status(500).send('Cannot handle ${req.body}.'));
    }

    static public function saveEntity(entity:Entity, openAfterSave:Bool, log:Bool) {
        var fileContent = haxe.Json.stringify(entity, null, "  ");
        var file = haxe.io.Path.join([dataDirectory, entity.id + ".json"]);
        var rewrite = sys.FileSystem.exists(file);
        sys.io.File.saveContent(file, fileContent);
        if (log)
            Sys.println((rewrite ? "✍️  Rewritten " : "🌟  Created ") + file);
        entityIndex.entities[file] = entity;
        entityIndex.invalidate();
        if (openAfterSave)
            Sys.command("code", [file]);
    }

    static function createEntityFromIg(igInfo:charleywong.chrome.InstagramProfile):Entity {
        var entity = switch (getEntityOfUrls([igInfo.url, igInfo.website])) {
            case null:
                {
                    id: igInfo.handle,
                    name: MultiLangString.parseName(igInfo.name),
                    webpages: [],
                    posts: [],
                    tags: [],
                };
            case e:
                e;
        }

        var webpages = entity.webpages;
        if (igInfo.website != null) {
            addWebpageToEntity(igInfo.website, entity);
        }
        var meta:DynamicAccess<Dynamic> = {};
        if (igInfo.name != null) {
            meta["name"] = igInfo.name;
        }
        if (igInfo.about != null) {
            meta["about"] = igInfo.about;
        }
        var igPage:WebPage = switch (entity.webpages.find(p -> p.url == igInfo.url)) {
            case null:
                var p = {
                    url: 'https://www.instagram.com/${igInfo.handle}/',
                };
                webpages.push(p);
                p;
            case p:
                p;
        };
        if (meta.keys().length > 0) {
            igPage.meta = meta;
        }
        return entity;
    }

    static function getEntityOfUrls(urls:Array<String>):Null<Entity> {
        for (url in urls) {
            var url = try {
                cleanUrl(url);
            } catch (e:Dynamic) {
                continue;
            }
            switch (entityIndex.entitiesOfUrl[url]) {
                case null:
                    //pass
                case e:
                    return e;
            }
        }
        return null;
    }

    static function addWebpageToEntity(url:String, entity:Entity):Void {
        var webpages = entity.webpages;
        var url = try {
            cleanUrl(url);
        } catch (e:Dynamic) {
            return;
        }

        // check to see if there is an existing webpage that is only differ by protocol
        var protocol = new URL(url).protocol;
        for (p in webpages) {
            var pUrl = new URL(p.url);
            if (pUrl.protocol != protocol) {
                pUrl.protocol = protocol;
                if (cleanUrl(Std.string(pUrl)) == url) {
                    if (protocol == "https:") {
                        pUrl.protocol = "https:";
                        p.url = cleanUrl(Std.string(pUrl));
                    }
                    return;
                }
            }
        }

        if (!webpages.exists(p -> p.url == url)) {
            webpages.push({
                url: url,
            });
        }
    }

    static function createEntityFromYt(info:charleywong.chrome.YouTubeProfile):Entity {
        var entity = switch (getEntityOfUrls([info.url].concat(info.links))) {
            case null:
                {
                    id: info.id,
                    name: MultiLangString.parseName(info.name),
                    webpages: [],
                    posts: [],
                    tags: [],
                };
            case e:
                e;
        }

        if (info.links != null) {
            for (url in info.links) {
                addWebpageToEntity(url, entity);
            }
        }
        var meta:DynamicAccess<Dynamic> = {};
        meta["id"] = info.id;
        if (info.location != null) {
            meta["location"] = info.location;
        }
        if (info.name != null) {
            meta["name"] = info.name;
        }
        if (info.description != null) {
            meta["about"] = info.description;
        }
        var yt:WebPage = switch (entity.webpages.find(p -> p.url == info.url)) {
            case null:
                var p = {
                    url: 'https://www.youtube.com/channel/${info.id}',
                };
                entity.webpages.push(p);
                p;
            case p:
                p;
        };
        if (meta.keys().length > 0) {
            yt.meta = meta;
        }
        return entity;
    }

    static function createEntityFromFb(fbPage:charleywong.chrome.FacebookProfile):Promise<Entity> {
        var entity:Entity = switch (getEntityOfUrls([fbPage.url].concat(fbPage.websites))) {
            case null:
                switch (entityIndex.entitiesOfFbPage[fbPage.id]) {
                    case null:
                        {
                            id: fbPage.handle,
                            name: MultiLangString.parseName(fbPage.name),
                            webpages: [],
                            posts: [],
                            tags: [],
                        };
                    case e:
                        e;
                }
            case e:
                e;
        }

        function addPlacesIfNone() {
            if (entity.places == null && fbPage.addr != null) {
                var noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
                switch(fbPage.addr.line) {
                    case null:
                        //pass
                    case address:
                        var place:Place = {};
                        place.address = if (noChi.match(address)) {
                            en: address
                        } else {
                            zh: address
                        }
                        place.googleMapsPlaceId = "";
                        entity.places = [place];
                }
            }
        }

        if (Facebook.accessToken != null) {
            return Facebook.getPageInfo(fbPage.handle)
                .then(info -> {
                    var webpages = entity.webpages;
                    if (fbPage.websites != null) {
                        for (url in fbPage.websites)
                            addWebpageToEntity(url, entity);
                    }
                    var fbUrl = 'https://www.facebook.com/${fbPage.handle}/';
                    switch (webpages.find(p -> p.url == fbUrl)) {
                        case null:
                            webpages.push({
                                url: fbUrl,
                                meta: cast info,
                            });
                        case webpage:
                            webpage.meta = cast info;
                    }
                    addPlacesIfNone();
                    entity;
                });
        } else {
            var meta:DynamicAccess<Dynamic> = {};
            if (fbPage.id != null) {
                meta["id"] = fbPage.id;
            }
            meta["name"] = fbPage.name;
            if (fbPage.about != null) {
                meta["about"] = fbPage.about;
            }
            meta["categories"] = fbPage.categories;
            if (fbPage.addr != null) {
                meta["addr"] = fbPage.addr.line;
                meta["area"] = fbPage.addr.area;

                addPlacesIfNone();
            }
            if (fbPage.email != null) {
                meta["email"] = fbPage.email;
            }
            if (fbPage.tel != null) {
                meta["tel"] = fbPage.tel;
            }
            var webpages = entity.webpages;
            if (fbPage.websites != null) {
                for (url in fbPage.websites)
                    addWebpageToEntity(url, entity);
            }

            var fbUrl = 'https://www.facebook.com/${fbPage.handle}/';
            switch (webpages.find(p -> p.url == fbUrl)) {
                case null:
                    webpages.push({
                        url: fbUrl,
                        meta: meta,
                    });
                case webpage:
                    webpage.meta = meta;
            }
            return Promise.resolve(entity);
        }
    }

    static function geocode(entity:Entity):Void {
        var gmapsClient = new js.npm.googlemaps.Client();
        var file = "GEOCODING_KEY";
        if (entity.places != null && FileSystem.exists(file)) {
            var GEOCODING_KEY = File.getContent("GEOCODING_KEY").trim();
            var geocodings = [
                for (p in entity.places)
                if (p.googleMapsPlaceId != null && p.googleMapsPlaceId != "" && (p.coordinates == null || p.area == null))
                gmapsClient.placeDetails({
                    params: {
                        place_id: p.googleMapsPlaceId,
                        key: GEOCODING_KEY,
                    }
                }).then(response -> {
                    switch (response.data.result) {
                        case null:
                            trace('Cannot geocode ${p.googleMapsPlaceId}: ${response.data.status}');
                        case result:
                            p.coordinates = result.geometry.location;
                            p.area = switch (result.address_components.find(c -> c.types.has("country"))) {
                                case null:
                                    trace('No country info for ${p.googleMapsPlaceId}.');
                                    null;
                                case { short_name: "HK" }:
                                    switch (Dclookup.dcNameFromCoordinates(p.coordinates.lat, p.coordinates.lng)["2015"]) {
                                        case null:
                                            trace('Unknown district for ${p.googleMapsPlaceId}.');
                                            null;
                                        case dc:
                                            { zh: dc.district };
                                    }
                                case { short_name: "TW" }: { zh: "臺灣" };
                                case { short_name: "US" }: { zh: "美國" };
                                case { short_name: "JP" }: { zh: "日本" };
                                case { short_name: "CN" }: { zh: "中國" };
                                case { short_name: "NZ" }: { zh: "紐西蘭" };
                                case { short_name: "SG" }: { zh: "新加坡" };
                                case { short_name: "MO" }: { zh: "澳門" };
                                case { short_name: "GB" }: { zh: "英國" };
                                case { short_name: "DE" }: { zh: "德國" };
                                case { short_name: "CA" }: { zh: "加拿大" };
                                case { short_name: code, long_name: name }:
                                    trace('Missing Chinese name of ${code}. Check https://en.wikipedia.org/wiki/ISO_3166-1.');
                                    { en: name };
                            }
                    }
                })
            ];
            if (geocodings.length > 0) {
                Promise.all(geocodings)
                    .then(_ -> saveEntity(entity, false, false));
            }
        }
    }

    static function favicon(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve((untyped reply.sendFile)("favicon.ico", "static/images/fav"));
    }

    static function robots(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.type("text/plain").send("Sitemap: " + haxe.io.Path.join([domain, "sitemap.xml"])));
    }

    static function sitemap(req:Request, reply:Reply):Promise<Dynamic> {
        var links = [
            { url: '/' },
            { url: '/list/all' },
            { url: '/campaign' },
            { url: Mooncake2020.path },
            { url: HkbaseDirectoryView.path },
        ];
        for (e in entityIndex.entities)
            if (e.searchable())
                links.push({
                    url: haxe.io.Path.join([domain, e.id])
                });
        var stream = new sitemap.SitemapStream( { hostname: domain } );
        return Sitemap.streamToPromise(node.stream.Readable.from(links).pipe(stream))
            .then(data -> data.toString())
            .then(xmlStr -> reply.type("application/xml").send(xmlStr));
    }

    static function initServer() {
        app.register(require('fastify-cors'), { 
            origin: "*",
            allowedHeaders: "Origin, X-Requested-With, Content-Type, Accept",
        });

        app.register(require('fastify-static'), {
            root: sys.FileSystem.absolutePath(StaticResource.resourcesDir),
            wildcard: false,
        });
        app.addHook("onSend", function(req:Request, reply:Reply, payload){
            if (payload != null) switch (untyped payload.filename:String) {
                case null:
                    // pass
                case filename:
                    var md5:Null<String> = req.query.md5;
                    if (md5 == null) {
                        return Promise.resolve(payload);
                    }
    
                    var actual = StaticResource.hash(filename);
                    if (md5 == actual) {
                        reply.header("Cache-Control", "public, max-age=604800"); // 7 days
                        return Promise.resolve(payload);
                    } else {
                        reply.header("Cache-Control", "no-cache");
                        var redirectUrl = new URL(req.url, "http://example.com");
                        redirectUrl.searchParams.set("md5", actual);
                        reply.redirect(redirectUrl.pathname + redirectUrl.search);
                        return Promise.resolve(null);
                    }
            }
            return Promise.resolve(payload);
        });

        app.addHook("onRequest", noTrailingSlash);

        app.get("/", index);
        app.get("/favicon.ico", favicon);
        app.get("/robots.txt", robots);
        app.get("/sitemap.xml", sitemap);
        app.get("/campaign", campaign);
        app.get("/list/all.json", allJson);
        app.get("/list/all", all);
        app.get("/" + Mooncake2020.path, pageMooncake2020);
        app.get("/" + HkbaseDirectoryView.path, pageHkbaseDirectory);
        app.get("/list/:name/:entityIds", listEntities);
        app.get("/proxy/image", proxyPostImage);
        app.get("/:entityId/profile.png", entityProfilePic);
        app.get("/:entityId", entity);
        app.get("/search/:query", searchHandler);
    }

    static function main():Void {
        if (isMain) {
            var watcher = js.npm.chokidar.Chokidar.watch(dataDirectory,{
                persistent: true,
                ignoreInitial: true,
            });
            watcher.on("add", function(path:String) {
                Sys.println('detected add: $path');
                entityIndex.entities[path] = try {
                    Json.parse(File.getContent(path));
                } catch (e:Dynamic) {
                    trace(e);
                    return;
                }
                entityIndex.invalidate();
            });
            watcher.on("change", function(path:String) {
                Sys.println('detected change: $path');
                var entity = entityIndex.entities[path] = try {
                    Json.parse(File.getContent(path));
                } catch (e:Dynamic) {
                    trace(e);
                    return;
                }
                geocode(entity);
                entityIndex.invalidate();
            });
            watcher.on("unlink", function(path:String) {
                Sys.println('detected unlink: $path');
                entityIndex.entities.remove(path);
                entityIndex.invalidate();
            });

            require("https-localhost")().getCerts().then(certs -> {
                app = Fastify.fastify({
                    http2: true,
                    https: certs,
                });
                initServer();
                app.post("/", post);
                app.listen(443, "0.0.0.0");
            }).then(_ -> {
                Sys.println('https://localhost');
                for (e in entityIndex.entities) {
                    geocode(e);
                }
            });
        } else {
            app = Fastify.fastify();
            initServer();
            js.Node.exports.handler = require('aws-lambda-fastify')(app, {
                binaryMimeTypes: [
                    "image/png",
                    "image/jpeg",
                    "image/gif",
                    "image/bmp",
                    "image/webp",
                    "image/x-icon",
                ],
            });
        }
    }
}