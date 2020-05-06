package charleywong;

import sys.FileSystem;
import js.npm.nodejieba.Nodejieba;
import js.npm.fetch.Fetch;
import js.lib.Promise;
import js.npm.jimp.Jimp;
import js.node.Buffer;
import sys.io.File;
import js.html.URL;
import haxe.*;
import charleywong.views.*;
import js.npm.express.*;
import js.Node.*;
import charleywong.UrlExtractors.*;
using charleywong.ExpressTools;
using StringTools;
using Lambda;

class ServerMain {
    static public final port = 3000;
    static final isMain = (untyped __js__("require")).main == module;
    static public final dataDirectory = "data/entity";
    static public final exportedFlexsearch = "flexsearch.json";
    static public final entityIndex:EntityIndex = EntityIndex.loadFromDirectory(
        dataDirectory,
        if (FileSystem.exists(exportedFlexsearch))
            exportedFlexsearch
        else
            null
    );
    static public var app:Application;

    static function index(req:Request, res:Response) {
        var search:Null<String> = req.query.search;
        if (search != null) {
            switch (search.trim()) {
                case "":
                    res.redirect("/list/all");
                    return;
                case search:
                    res.redirect("/search/" + search.urlEncode());
                    return;
            }
        }
        res.sendView(Index);
    }

    static function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    static function all(req:Request, res:Response) {
        res.sendView(EntityListView, {
            slug: "all",
            listName: "全部 Charley Wong 和你查 商業/品牌",
            entities: {
                var entities = [
                    for (e in entityIndex.entities)
                    if (e.posts.length > 0)
                    e
                ];
                entities.sort((e1, e2) -> Reflect.compare(renderName(e1.name).toLowerCase(), renderName(e2.name).toLowerCase()));
                entities;
            }
        });
    }

    static function allJson(req:Request, res:Response) {
        res.setHeader('Content-Type', 'application/json');
        res.write("[\n");
        var n = 0;
        for (e in entityIndex.entities)
        if (e.posts.length > 0) {
            if (++n > 1) {
                res.write(",\n");
            }
            res.write(Json.stringify(e));
        }
        res.end("\n]");
    }

    static function listEntities(req:Request, res:Response) {
        var name:String = req.params.name;
        var ids:String = req.params.entityIds;
        var entities = [
            for (id in ids.split("+"))
            switch (entityIndex.entitiesOfId[id]) {
                case null: throw 'Entity of id "$id" not found';
                case e: e;
            }
        ];
        res.sendView(EntityListView, {
            slug: ids,
            listName: name,
            entities: entities,
        });
    }

    static function listEntitiesJson(req:Request, res:Response) {
        var name:String = req.params.name;
        var ids:String = req.params.entityIds;
        var entities = [
            for (id in ids.split("+"))
            switch (entityIndex.entitiesOfId[id]) {
                case null: throw 'Entity of id "$id" not found';
                case e: e;
            }
        ];
        res.json(entities);
    }

    static function entityJson(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }

        if (entityId != entity.id) {
            res.redirect(entity.id);
            return;
        }

        res.json(entity);
    }

    static function entity(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }

        if (entityId != entity.id) {
            res.redirect(entity.id);
            return;
        }

        res.sendView(EntityView, {
            entity: entity,
        });
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

    static function getEntityPic(e:Entity, width:Float):Promise<Buffer> {
        for (p in e.webpages) {
            switch (new URL(p.url)) {
                case extractFbHomePage(_) => fb if (fb != null):
                    return Fetch.fetch('https://graph.facebook.com/v6.0/${fb}/picture?type=square&width=${width}&height=${width}')
                        .then(r -> if (r.status == 404){
                            getPicOfText(e.name[en]);
                        } else if (r.url.endsWith(".gif")) {
                            getPicOfText(e.name[en]);
                        } else {
                            r.buffer();
                        })
                        .catchError(err -> {
                            trace(err);
                            noProfilePic;
                        });
                case _: //pass
            }
        }
        return getPicOfText(e.name[en]);
    }

    static public final entityProfilePicSize = 720;

    static function entityProfilePic(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }

        var w = entityProfilePicSize;
        var border = 42;
        getEntityPic(entity, w)
            .then(function(pic) {
                var frame = "static/images/charley-wong-profile-cover.png";
                return Promise.all([Jimp.read(pic), Jimp.read(frame)])
                    .then(function(args) {
                        var pic:Jimp = args[0];
                        var frame:Jimp = args[1];
                        return frame.clone()
                            .composite(pic.resize(w - border * 2, w - border * 2), border, border)
                            .composite(frame, 0, 0)
                            .getBufferAsync(Jimp.MIME_PNG);
                    });
            })
            .then(function(buf) {
                res.setHeader("Content-Type", Jimp.MIME_PNG);
                res.setHeader("Cache-Control", "public, max-age=604800"); // 7 days
                res.write(buf);
                res.end();
            })
            .catchError(function (err) {
                res.status(500).send(err);
            });
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
        ]);
        for (id in metaResults.map(r -> r.id)) {
            if (!ids.has(id))
                ids.push(id);
        }
        return ids
            .map(id -> entityIndex.entitiesOfId[id])
            .filter(e -> e.posts.length > 0) // some entities may have posts become inaccessbile thus removed
            .filter(e -> tags.foreach(t -> e.tags.exists(tid -> tid.id.toLowerCase() == t)));
    }

    static function searchJson(req:Request, res:Response) {
        var query:String = req.params.query;
        var tags = switch (req.query.tags:String) {
            case null: [];
            case v: v.split(" ").map(t -> t.toLowerCase());
        };
        res.json(search(query, tags));
    }

    static function searchHtml(req:Request, res:Response) {
        var query:String = req.params.query;
        var tags = switch (req.query.tags:String) {
            case null: [];
            case v: v.split(" ").map(t -> t.toLowerCase());
        };
        var entities = search(query, tags);
        res.sendView(EntityListView, {
            slug: query.urlEncode(),
            listName: '${query} 搜尋結果',
            searchQuery: query,
            entities: entities,
        });
    }

    static function allowCors(req:Request, res:Response, next):Void {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    }

    static function post(req:Request, res:Response) {
        var url = new URL(cleanUrl(req.body.url));
        switch (extractFbPost(url)) {
            case null:
                //pass
            case handle:
                switch (entityIndex.entitiesOfFbPage[handle]) {
                    case null:
                        res.status(500).send('${handle} has not been imported yet.');
                        return;
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
                        res.status(200).send("done");
                        return;
                }
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                var e = createEntityFromFb(req.body);
                saveEntity(e, true, true);
                res.status(200).send("done");
                return;
        }

        switch (extractIgPost(url)) {
            case null:
                //pass
            case post:
                var handle = req.body.igHandle;
                switch (entityIndex.entitiesOfUrl['https://www.instagram.com/$handle/']) {
                    case null:
                        res.status(500).send('${handle} has not been imported yet.');
                        return;
                    case e:
                        var postUrl = Std.string(url);
                        if (e.posts.exists(p -> p.url == postUrl)) {
                            res.status(500).send('${postUrl} already exists.');
                            return;
                        }
                        e.posts.push({
                            url: postUrl
                        });
                        saveEntity(e, true, true);
                        res.status(200).send("done");
                        return;
                }
        }

        switch (extractIgProfilePage(url)) {
            case null:
                //pass
            case handle:
                var e = createEntityFromIg(req.body);
                saveEntity(e, true, true);
                res.status(200).send("done");
                return;
        }

        switch (extractYouTubeProfile(url)) {
            case null:
                //pass
            case Id(_) | Handle(_):
                var e = createEntityFromYt(req.body);
                saveEntity(e, true, true);
                res.status(200).send("done");
                return;
        }

        res.status(500).send('Cannot handle ${req.body}.');
    }

    static public function saveEntity(entity:Entity, openAfterSave:Bool, log:Bool) {
        var fileContent = haxe.Json.stringify(entity, null, "  ");
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
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

    static function createEntityFromFb(fbPage:charleywong.chrome.FacebookProfile):Entity {
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
        var meta:DynamicAccess<Dynamic> = {};
        meta["name"] = fbPage.name;
        if (fbPage.id != null) {
            meta["id"] = fbPage.id;
        }
        if (fbPage.about != null) {
            meta["about"] = fbPage.about;
        }
        meta["categories"] = fbPage.categories;
        if (fbPage.addr != null) {
            meta["addr"] = fbPage.addr.line;
            meta["area"] = fbPage.addr.area;

            if (entity.places == null) {
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

        return entity;
    }

    static function geocode(entity:Entity):Void {
        var gmapsClient = new js.npm.googlemaps.Client();
        var GEOCODING_KEY = Sys.getEnv("GEOCODING_KEY");
        if (GEOCODING_KEY != null && entity.places != null) {
            var geocodings = [
                for (p in entity.places)
                if (p.googleMapsPlaceId != null && p.coordinates == null)
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
                    }
                })
            ];
            if (geocodings.length > 0) {
                Promise.all(geocodings)
                    .then(_ -> saveEntity(entity, false, false));
            }
        }
    }

    static function main():Void {
        app = new Application();

        var bodyParser = require("body-parser");
        app.use(bodyParser.json());

        app.set('json spaces', 2);
        app.use(Express.Static("static"));
        app.use(function(req:Request, res:Response, next) {
            if (req.path.endsWith('/') && req.path.length > 1) {
                var query = req.url.substr(req.path.length);
                res.redirect(301, req.path.substr(0, req.path.length-1) + query);
            } else {
                next();
            }
        });

        app.use(allowCors);

        app.get("/", index);
        app.get("/list/all.json", allJson);
        app.get("/list/all", all);
        app.get("/list/:name/:entityIds.json", listEntitiesJson);
        app.get("/list/:name/:entityIds", listEntities);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+).json", entityJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)/profile.png", entityProfilePic);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)", entity);
        app.get("/search/:query.json", searchJson);
        app.get("/search/:query", searchHtml);

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
            app.post("/", post);
            app.listen(port, function() {
                Sys.println('http://localhost:$port');

                for (e in entityIndex.entities) {
                    geocode(e);
                }
            });
        } else {
            var serverless = require('serverless-http');
            js.Node.exports.handler = serverless(app, {
                binary: [
                    'image/*'
                ],
            });
        }
    }
}