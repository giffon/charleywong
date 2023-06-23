package charleywong;

import sys.FileSystem;
import CrossFetch.fetch;
import node.url.URLSearchParams;
import js.npm.nodejieba.Nodejieba;
import js.lib.Promise;
import js.npm.jimp.Jimp;
import js.node.Buffer;
import Fastify;
import fastify.*;
import fastify.types.instance.FastifyInstance;
import fastify.types.reply.FastifyReply;
import fastify.types.request.FastifyRequest;
import sys.io.File;
import js.html.URL;
import haxe.*;
import haxe.io.Path;
import charleywong.views.*;
import js.Node.*;
import charleywong.UrlExtractors.*;
import charleywong.groonga.CommandResult;
using charleywong.EntityTools;
using charleywong.ReplyTools;
using charleywong.PromiseTools;
using StringTools;
using Lambda;

typedef Request = FastifyRequest<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>;
typedef Reply = FastifyReply<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>;

class ServerMain {
    static public final isMain = js.Syntax.code("require.main") == module;
    static public final domain = "https://charleywong.info";
    static public final dataDirectory = "data/entity";
    static public final entityIndex:EntityIndex = EntityIndex.loadFromDirectory(dataDirectory);
    static public var app:FastifyInstance<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>;

    static function noQuery(req:Request, ?allowed:Iterable<String>):URL {
        final url = new URL(req.url, domain);
        new URLSearchParams(req.query)
            .forEach((value, name, searchParams) -> {
                if (allowed == null || !allowed.has(name)) {
                    url.searchParams.delete(name);
                }
            });
        return url;
    }

    static function privacy(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(
            reply.sendView(PrivacyView)
        );
    }

    static function index(req:Request, reply:Reply):Promise<Dynamic> {
        final search:Null<String> = req.query.search;
        if (search != null) {
            return switch (search.trim()) {
                case "":
                    Promise.resolve(reply.redirect("/list/all"));
                case search:
                    Promise.resolve(reply.redirect("/search/" + search.urlEncode()));
            }
        }
        switch (noQuery(req)) {
            case url if (url.pathname + url.search == req.url):
                //pass
            case url:
                return Promise.resolve(reply.redirect(url.pathname + url.search));
        }
        return Promise.resolve(
            reply
                .header("Cache-Control", "public, max-age=7200, stale-while-revalidate=604800") // max-age: 2 hours, stale-while-revalidate: 7 days
                .sendView(Index)
        );
    }

    static function pageMooncake2020(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.sendView(Mooncake2020));
    }

    static function pageHkbaseDirectory(req:Request, reply:Reply):Promise<Dynamic> {
        final entities = HkbaseDirectory.localCache // use the order of HKBASE directory
            .map(d -> switch (HkbaseDirectory.getEntity(d, entityIndex.entitiesOfHkbase)) {
                case null:
                    trace('No matching entity of ${d.name_en} ${d.name_zh}');
                    null;
                case e:
                    e;
            })
            .filter(e -> e != null);
        return Promise.resolve(
            reply
                .header("Cache-Control", "public, max-age=86400, stale-while-revalidate=604800") // max-age: 1 day, stale-while-revalidate: 7 days
                .sendView(HkbaseDirectoryView, {
                    entities: entities,
                })
        );
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
                final entities = [
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
        final name:String = req.params.name;
        final ids:String = req.params.entityIds;
        if (ids.endsWith(".json")) {
            final ids = ids.substr(0, -".json".length);
            final entities = [
                for (id in ids.split("+"))
                switch (entityIndex.entitiesOfId[id]) {
                    case null: throw 'Entity of id "$id" not found';
                    case e: e.fullInfo();
                }
            ];
            return Promise.resolve(entities);
        }
        final entities = [
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
        switch (noQuery(req)) {
            case url if (url.pathname + url.search == req.url):
                //pass
            case url:
                return Promise.resolve(reply.redirect(url.pathname + url.search));
        }

        var entityId:String = req.params.entityId;
        final returnJson = entityId.endsWith(".json");
        if (returnJson)
            entityId = entityId.substr(0, -".json".length);

        final entity = entityIndex.entitiesOfId[entityId];
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
                reply
                    .header("Cache-Control", "public, max-age=7200, stale-while-revalidate=604800") // max-age: 2 hours, stale-while-revalidate: 7 days
                    .sendView(EntityView, {
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
            final tw = Jimp.measureText(font, text);
            final th = Jimp.measureTextHeight(font, text);
            final padding = 20;
            final size = Std.int(Math.max(tw, th) + padding + padding);
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
                        fetch(ogImageUrl)
                            .then(r -> if (!r.ok) {
                                throw r.status;
                            } else {
                                r.arrayBuffer();
                            })
                            .then(ab -> node.buffer.Buffer.from(ab));
                }
            });
    }

    static function getPic(profileUrls:Array<String>, width:Int):Promise<Buffer> {
        for (i => url in profileUrls) {
            switch (new URL(url)) {
                case extractFbHomePage(_) => fb if (fb != null):
                    return fetch('https://graph.facebook.com/${Facebook.apiVersion}/${fb}/picture?type=square&width=${width}&height=${width}')
                        .then(r -> if (!r.ok) {
                            throw r.status;
                        } else if (r.url.endsWith(".gif")) {
                            throw "no profile pic set";
                        } else {
                            r.arrayBuffer();
                        })
                        .then(ab -> node.buffer.Buffer.from(ab))
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
        final webpages = e.webpages.map(p -> p.url);
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
        final entityId:String = req.params.entityId;
        final entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            return Promise.resolve(reply.status(404).send('Entity of id $entityId not found.'));
        }

        final border = 46;
        final w = entityProfilePicHeight - border - border;
        return getEntityPic(entity, w)
            .then(function(pic) {
                final frame = "static/images/charley-wong-profile-cover.png";
                return Promise.all([Jimp.read(pic), Jimp.read(frame)])
                    .then(function(args) {
                        final pic:Jimp = args[0];
                        final frame:Jimp = args[1];
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
                .header("Cache-Control", "public, max-age=86400, stale-while-revalidate=604800") // max-age: 1 day, stale-while-revalidate: 7 days
                .send(buf)
            )
            .catchError(err ->
                reply.status(500).send(err)
            );
    }

    static function search(query:String, tags:Array<String>):Array<Entity> {
        return groonga(query, tags);
    }

    static function groonga(query:String, tags:Array<String>):Array<Entity> {
        final cut = Nodejieba.cutHMM(query);
        // trace(cut);
        final r:SelectResultBody = entityIndex.groonga.commandSync("select", {
            table: "Entity",
            match_columns: "name * 3 || tags * 2 || meta",
            query: cut.join(" "),
            output_columns: "_key",
            limit: 10000,
            sort_keys: "-_score",
        });
        return [
            for (record in r.searchResult.records)
            entityIndex.entitiesOfId[record[0]]
        ]
            .filter(e -> e.searchable())
            .filter(e -> tags.foreach(t -> e.tags.exists(tid -> tid.id.toLowerCase() == t)));
    }

    static function searchHandler(req:Request, reply:Reply):Promise<Dynamic> {
        switch (noQuery(req)) {
            case url if (url.pathname + url.search == req.url):
                //pass
            case url:
                return Promise.resolve(reply.redirect(url.pathname + url.search));
        }

        final query:String = req.params.query;
        if (query.endsWith(".json")) {
            final query = query.substr(0, -".json".length);
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
        final entities = search(query, []);
        final slug = query.urlEncode();
        return Promise.resolve(
            reply
                .header("Cache-Control", "public, max-age=3600, stale-while-revalidate=604800") // max-age: 1 hour, stale-while-revalidate: 7 days
                .sendView(EntityListView, {
                    slug: slug,
                    path: haxe.io.Path.join(["search", slug]),
                    listName: '${query} 搜尋結果',
                    searchQuery: query,
                    entities: entities,
                })
        );
    }

    static function noTrailingSlash(req:Request, reply:Reply):Promise<Any> {
        final url = new node.url.URL(req.raw.url, "http://example.com");
        if (url.pathname.endsWith('/') && url.pathname.length > 1) {
            final redirectTo = url.pathname.substr(0, url.pathname.length-1) + url.search;
            reply.redirect(301, redirectTo);
        }
        return Promise.resolve();
    }

    static function noOldDomain(req:Request, reply:Reply):Promise<Any> {
        switch (req.hostname) {
            case "charleywong.giffon.io":
                final redirectTo = Path.join([domain, req.url]);
                trace('redirect to $redirectTo');
                reply.redirect(301, redirectTo);
            case _:
                // pass
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
        final post:Null<String> = req.query.post;
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
                                        fetch(Std.string(new URL(imageUrl)))
                                            .then(r -> {
                                                reply
                                                    .status(r.status)
                                                    .header("Content-Type", (cast r:js.html.Response).headers.get("Content-Type"))
                                                    .header("Cache-Control", "public, max-age=86400, stale-while-revalidate=2628000"); // max-age: 1 day, stale-while-revalidate: one month
                                                r.arrayBuffer();
                                            })
                                            .then(ab -> node.buffer.Buffer.from(ab))
                                            .then(b -> reply.send(b))
                                            .catchError(err -> reply.status(500).send(err));
                                }
                        }
                    }
                });
        }
    }

    static function post(req:Request, reply:Reply):Promise<Dynamic> {
        final url = new URL(cleanUrl(req.body.url));
        // trace(url);
        switch (extractFbPost(url)) {
            case null:
                // pass
            case { handle: handle }:
                // trace(handle);
                final handle = if (handle != null) {
                    Promise.resolve(handle);
                } else if (url.pathname == "/permalink.php") {
                    final params = parseSearch(url.search);
                    final id = params["id"];
                    Facebook.getPageInfo('https://www.facebook.com/${id}/')
                        .then(info -> {
                            // trace(info);
                            info.id;
                        });
                } else {
                    throw "Cannot find FB handle from post";
                }
                return handle.then(handle -> {
                    switch (entityIndex.entitiesOfFbPage[handle]) {
                        case null:
                            Promise.resolve(reply.status(500).send('${handle} has not been imported yet.'));
                        case e:
                            // may use https://mbasic.facebook.com/ in the future?
                            Utils.getCanonical(Std.string(url).replace("https://www.facebook.com/", "https://m.facebook.com/"))
                                .then(url -> {
                                    final r = ~/^https:\/\/www\.facebook\.com\/([^\/]+)\/posts\/([^\/]+)\/([^\/]+)\/$/;
                                    if (r.match(url)) {
                                        'https://www.facebook.com/${r.matched(1)}/posts/${r.matched(3)}/';
                                    } else {
                                        url;
                                    }
                                })
                                .catchError(err -> {
                                    trace(err);
                                    url;
                                })
                                .then(postUrl -> {
                                    switch (e.posts.find(p -> p.url == postUrl)) {
                                        case null:
                                            e.posts.push({
                                                url: postUrl,
                                            });
                                        case post:
                                            //pass
                                    }
                                    saveEntity(e, true, true);
                                    reply.status(200).send("done");
                                });
                    }
                });
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                return createEntityFromFb(req.body)
                    .then(e -> {
                        saveEntity(e, true, true);
                        return reply.status(200).send("done");
                    });
        }

        switch (extractIgPost(url)) {
            case null:
                //pass
            case post:
                final handle = req.body.igHandle;
                switch (entityIndex.entitiesOfUrl['https://www.instagram.com/$handle/']) {
                    case null:
                        return Promise.resolve(reply.status(500).send('${handle} has not been imported yet.'));
                    case e:
                        final postUrl = Std.string(url);
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
                return createEntityFromIg(req.body)
                    .then(e -> {
                        saveEntity(e, true, true);
                        reply.status(200).send("done");
                    });
        }

        switch (extractYouTubeProfile(url)) {
            case null:
                //pass
            case Id(_) | Handle(_):
                return createEntityFromYt(req.body)
                    .then(e -> {
                        saveEntity(e, true, true);
                        reply.status(200).send("done");
                    });
        }

        return Promise.resolve(reply.status(500).send('Cannot handle ${req.body}.'));
    }

    static public function saveEntity(entity:Entity, openAfterSave:Bool, log:Bool):Void {
        final fileContent = haxe.Json.stringify(entity, null, "  ");
        final file = haxe.io.Path.join([dataDirectory, entity.id + ".json"]);
        final rewrite = sys.FileSystem.exists(file);
        sys.io.File.saveContent(file, fileContent);
        if (log)
            Sys.println((rewrite ? "✍️  Rewritten " : "🌟  Created ") + file);
        entityIndex.entities[file] = entity;
        entityIndex.invalidate();
        if (openAfterSave)
            Sys.command("code", [file]);
    }

    static function createEntityFromIg(igInfo:charleywong.chrome.InstagramProfile):Promise<Entity> {
        final entity = switch (getEntityOfUrls([igInfo.url, igInfo.website])) {
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

        final meta:DynamicAccess<Dynamic> = {};
        final webpages = entity.webpages;
        final entity = if (igInfo.website != null) {
            meta["website"] = igInfo.website;
            addWebpageToEntity(igInfo.website, entity);
        } else {
            Promise.resolve(entity);
        }
        return entity.then(entity -> {
            if (igInfo.name != null) {
                meta["name"] = igInfo.name;
            }
            if (igInfo.about != null) {
                meta["about"] = igInfo.about;
            }
            final igPage:WebPage = switch (entity.webpages.find(p -> p.url == igInfo.url)) {
                case null:
                    final p = {
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
        });
    }

    static function getEntityOfUrls(urls:Array<String>):Null<Entity> {
        for (url in urls) {
            final url = try {
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

    static function addWebpageToEntity(url:String, entity:Entity):Promise<Entity> {
        final webpages = entity.webpages;
        final url = try {
            (switch (new URL(url).protocol) {
                case "https:":
                    Promise.resolve(url);
                case _:
                    Utils.followRedirect(url)
                        .catchError(err -> url);
            }).then(cleanUrl);
        } catch (e:Dynamic) {
            trace(e);
            return Promise.resolve(entity);
        }

        return url.then(url -> {
            // check to see if there is an existing webpage that is only differ by protocol
            final protocol = new URL(url).protocol;
            for (p in webpages) {
                final pUrl = new URL(p.url);
                if (pUrl.protocol != protocol) {
                    pUrl.protocol = protocol;
                    if (cleanUrl(Std.string(pUrl)) == url) {
                        if (protocol == "https:") {
                            pUrl.protocol = "https:";
                            p.url = cleanUrl(Std.string(pUrl));
                        }
                        return entity;
                    }
                }
            }

            if (!webpages.exists(p -> p.url == url)) {
                webpages.push({
                    url: url,
                });
            }

            return entity;
        });
    }

    static function createEntityFromYt(info:charleywong.chrome.YouTubeProfile):Promise<Entity> {
        final entity = switch (getEntityOfUrls([info.url].concat(info.links))) {
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
        final entity = if (info.links != null) {
            Promise.all([
                for (url in info.links)
                addWebpageToEntity(url, entity)
            ]).then(_ -> entity);
        } else {
            Promise.resolve(entity);
        }
        return entity.then(entity -> {
            final meta:DynamicAccess<Dynamic> = {};
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
            final yt:WebPage = switch (entity.webpages.find(p -> p.url == info.url)) {
                case null:
                    final p = {
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
        });
    }

    static function createEntityFromFb(fbPage:charleywong.chrome.FacebookProfile):Promise<Entity> {
        return Facebook.getPageInfo(fbPage.url).then(info -> {
            var entity:Entity = null;
            
            if (entity == null) switch (entityIndex.entitiesOfFbPage[info.id]) {
                case null:
                    // pass
                case e:
                    entity = e;
            }
            
            if (entity == null) switch (entityIndex.entitiesOfFbPage[info.username]) {
                case null:
                    // pass
                case e:
                    entity = e;
            }

            if (entity == null) {
                final name = MultiLangString.parseName(info.name);
                entity = {
                    id: info.username != null ? info.username : switch (name[en]) {
                        case name if (name != null && ~/[A-Za-z0-9\.\-_]/.match(name)):
                            ~/[^A-Za-z0-9\.\-_]+/g.replace(name, "");
                        case _:
                            info.id;
                    },
                    name: name,
                    webpages: [],
                    posts: [],
                    tags: [],
                };
            }

            function addPlacesIfNone() {
                if (entity.places == null && info.single_line_address != null) {
                    final noChi = ~/^[^\u4e00-\u9fff]+$/; // no chinese characters
                    switch(info.single_line_address) {
                        case null:
                            //pass
                        case address:
                            final place:Place = {};
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

            final webpages = entity.webpages;
            return (info.website != null ? addWebpageToEntity(info.website, entity) : Promise.resolve(entity))
                .then(entity -> {
                    switch (webpages.find(p -> p.url == 'https://www.facebook.com/${info.id}/' || p.url == 'https://www.facebook.com/${info.username}/')) {
                        case null:
                            webpages.push({
                                url: 'https://www.facebook.com/${info.id}/',
                                meta: cast info,
                            });
                        case webpage:
                            webpage.meta = cast info;
                    }
                    addPlacesIfNone();
                    return entity;
                });
        });
    }

    static function getFullMeta(entity:Entity):Promise<{}> {
        final archiveUrl = "https://web.archive.org/";
        function needGetFullMeta(p:Post):Bool {
            return
                p.url.startsWith(archiveUrl)
                &&
                (
                    p.meta == null
                    ||
                    (!p.meta.exists("og"))
                    ||
                    (!p.meta.exists("ld"))
                )
            ;
        }

        if (!entity.posts.exists(needGetFullMeta)) {
            return Promise.resolve(null);
        }

        // trace('getFullMeta: ' + entity.id);

        return entity.posts.map(post ->
            if (needGetFullMeta(post)) {
                () -> {
                    trace('${entity.id} ${post.url}');
                    (() -> EntityTools.fullMeta(post)).retry(1000);
                }
            } else {
                () -> Promise.resolve(post);
            }
        )
            .inSequence()
            .then(posts -> {
                entity.posts = cast posts;
                saveEntity(entity, false, true);
                null;
            });
    }

    static function geocode(entity:Entity):Promise<{}> {
        function needGeocode(p:Place):Bool {
            return p.googleMapsPlaceId != null && p.googleMapsPlaceId != "" && (p.coordinates == null || p.area == null);
        }

        if (entity.places == null || GoogleMaps.GEOCODING_KEY == null || !entity.places.exists(needGeocode)) {
            return Promise.resolve(null);
        }

        final gmapsClient = GoogleMaps.client;
        final geocodings = [
            for (p in entity.places)
            if (needGeocode(p))
            gmapsClient.placeDetails({
                params: {
                    place_id: p.googleMapsPlaceId,
                    key: GoogleMaps.GEOCODING_KEY,
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
                                switch (HKDistricts.fromCoordinates(p.coordinates.lat, p.coordinates.lng)) {
                                    case null:
                                        trace('Unknown district for ${p.googleMapsPlaceId}.');
                                        null;
                                    case dc:
                                        { zh: dc.NAME_TC };
                                }
                            case { short_name: "TW" }: { zh: "臺灣" };
                            case { short_name: code, long_name: name }:
                                final iso:DynamicAccess<{
                                    zh_hk:String,
                                    en:String,
                                }> = haxe.Json.parse(sys.io.File.getContent("data/iso3166/iso3166-1.json"));
                                final info = iso[code];
                                if (info == null)
                                    throw 'No info about $code';
                                { zh: info.zh_hk };
                        }
                }
            })
        ];
        return Promise.all(geocodings)
            .then(_ -> saveEntity(entity, false, false))
            .then(_ -> null);
    }

    static function favicon(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve((untyped reply.sendFile)("favicon.ico", "static/images/fav"));
    }

    static function robots(req:Request, reply:Reply):Promise<Dynamic> {
        return Promise.resolve(reply.type("text/plain").send("Sitemap: " + haxe.io.Path.join([domain, "sitemap.xml"])));
    }

    static function sitemap(req:Request, reply:Reply):Promise<Dynamic> {
        final links = [
            { url: '/' },
            { url: '/list/all' },
            { url: Mooncake2020.path },
            { url: HkbaseDirectoryView.path },
        ];
        for (e in entityIndex.entities)
            if (e.searchable())
                links.push({
                    url: haxe.io.Path.join([domain, e.id])
                });
        final stream = new sitemap.SitemapStream( { hostname: domain } );
        return Sitemap.streamToPromise(node.stream.Readable.from(links).pipe(stream))
            .then(data -> data.toString())
            .then(xmlStr -> reply.type("application/xml").send(xmlStr));
    }

    static function initServer() {
        app.register(require('@fastify/cors'), { 
            origin: "*",
            allowedHeaders: "Origin, X-Requested-With, Content-Type, Accept",
        });

        app.register(require('@fastify/static'), {
            root: sys.FileSystem.absolutePath(StaticResource.resourcesDir),
            serve: false,
        });

        app.addHook("onRequest", noTrailingSlash);
        app.addHook("onRequest", noOldDomain);
        app.addHook("onRequest", StaticResource.hook);

        app.get("/", index);
        app.get("/privacy", privacy);
        app.get("/favicon.ico", favicon);
        app.get("/robots.txt", robots);
        app.get("/sitemap.xml", sitemap);
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
        final opts:Dynamic = {};
        if (Sys.getEnv("AWS_LAMBDA_FUNCTION_NAME") != null) {
            opts.trustProxy = true;
            app = Fastify.call(opts);
            initServer();
            js.Node.exports.handler = require('@fastify/aws-lambda')(app, {
                binaryMimeTypes: [
                    "image/png",
                    "image/jpeg",
                    "image/gif",
                    "image/bmp",
                    "image/webp",
                    "image/x-icon",
                ],
            });
        } else {
            final watcher = js.npm.chokidar.Chokidar.watch(dataDirectory,{
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
                final entity = entityIndex.entities[path] = try {
                    Json.parse(File.getContent(path));
                } catch (e:Dynamic) {
                    trace(e);
                    return;
                }
                geocode(entity)
                    .then(_ -> getFullMeta(entity))
                    .then(_ -> entityIndex.invalidate());
            });
            watcher.on("unlink", function(path:String) {
                Sys.println('detected unlink: $path');
                entityIndex.entities.remove(path);
                entityIndex.invalidate();
            });

            app = Fastify.call(opts);
            initServer();
            app.post("/", post);
            app.listen({
                port: 80,
                host: "0.0.0.0"
            });

            Cloudflared.getHostname("http://cloudflared:44871/metrics")
                .then(hostname -> {
                    Sys.println(hostname);
                })
                .catchError(err -> {
                    trace(err);
                    Sys.println('http://localhost');
                })
                .then(_ -> {
                    [
                        for (e in entityIndex.entities)
                        () -> geocode(e)
                    ].inSequence();
                })
                .then(_ -> {
                    [
                        for (e in entityIndex.entities)
                        () -> getFullMeta(e)
                    ].inSequence();
                });
        }
    }
}