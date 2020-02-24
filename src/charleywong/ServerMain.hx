package charleywong;

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
    static final port = 3000;
    static final isMain = (untyped __js__("require")).main == module;
    static final dataDirectory = "data/entity";
    static final entityIndex:EntityIndex = EntityIndex.loadFromDirectory(dataDirectory);
    static var app:Application;

    static function index(req:Request, res:Response) {
        switch (req.query.search:String) {
            case null: //pass
            case "":
                res.redirect("/list/all");
                return;
            case search:
                res.redirect("/search/" + search.urlEncode());
                return;
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
                var entities = entityIndex.entities.array();
                entities.sort((e1, e2) -> Reflect.compare(renderName(e1.name).toLowerCase(), renderName(e2.name).toLowerCase()));
                entities;
            }
        });
    }

    static function allJson(req:Request, res:Response) {
        res.json([for (e in entityIndex.entities) e]);
    }

    static function entityJson(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
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
        res.sendView(EntityView, {
            entity: entity,
        });
    }

    static function getEntityPic(e:Entity, width:Float):Promise<String> {
        for (p in e.webpages) {
            switch (new URL(p.url)) {
                case extractFbHomePage(_) => fb if (fb != null):
                    return Promise.resolve('https://graph.facebook.com/v6.0/${fb}/picture?type=square&width=${width}&height=${width}');
                case _: //pass
            }
        }
        return Promise.resolve("static/images/user-solid.png");
    }

    static function entityProfilePic(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = entityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }

        var w = 720;
        var border = 42;
        getEntityPic(entity, w)
            .then(function(picUrl) {
                var frame = "static/images/charley-wong-profile-cover.png";
                return Promise.all([Jimp.read(picUrl), Jimp.read(frame)])
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
                res.write(buf);
                res.end();
            })
            .catchError(function (err) {
                res.status(500).send(err);
            });
    }

    static function searchJson(req:Request, res:Response) {
        var query:String = req.params.query;
        var result:Array<{id:String}> = entityIndex.flexsearch.search({
            query: query,
            limit: Math.POSITIVE_INFINITY,
        });
        res.json(result.map(r -> entityIndex.entitiesOfId[r.id]));
    }

    static function search(req:Request, res:Response) {
        var query:String = req.params.query;
        var result:Array<{id:String}> = entityIndex.flexsearch.search({
            query: query,
            limit: Math.POSITIVE_INFINITY,
        });
        res.sendView(EntityListView, {
            slug: query.urlEncode(),
            listName: '${query} 搜尋結果',
            searchQuery: query,
            entities: result.map(r -> entityIndex.entitiesOfId[r.id]),
        });
    }

    static function flexsearchJson(req:Request, res:Response) {
        res.json(entityIndex.flexsearch.export({
            serialize: false,
            doc: false,
        }));
    }

    static function allowCors(req:Request, res:Response, next):Void {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    }

    static function post(req:Request, res:Response) {
        var url = new URL(req.body.url);
        switch (extractFbPost(url)) {
            case null:
                //pass
            case handle:
                switch (entityIndex.entitiesOfFbPage[handle]) {
                    case null:
                        res.status(500).send('${handle} has not been imported yet.');
                        return;
                    case e:
                        var postUrl:String = req.body.url;
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
                        saveEntity(e);
                        res.status(200).send("done");
                        return;
                }
        }

        switch (extractFbHomePage(url)) {
            case null:
                //pass
            case handle:
                var e = createEntityFromFb(req.body);
                saveEntity(e);
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
                        var postUrl:String = req.body.url;
                        if (e.posts.exists(p -> p.url == postUrl)) {
                            res.status(500).send('${postUrl} already exists.');
                            return;
                        }
                        e.posts.push({
                            url: postUrl
                        });
                        saveEntity(e);
                        res.status(200).send("done");
                        return;
                }
        }

        switch (extractIgProfilePage(url)) {
            case null:
                //pass
            case handle:
                var e = createEntityFromIg(req.body);
                saveEntity(e);
                res.status(200).send("done");
                return;
        }

        res.status(500).send('Cannot handle ${req.body}.');
    }

    static function saveEntity(entity:Entity, openAfterSave = true) {
        var fileContent = haxe.Json.stringify(entity, null, "  ");
        if (Sys.getEnv("CI") != null || Sys.getEnv("GITHUB_ACTIONS") != null) {
            Sys.println("In CI, skip writing file.");
        } else {
            var file = haxe.io.Path.join([dataDirectory, entity.id + ".json"]);
            var rewrite = sys.FileSystem.exists(file);
            sys.io.File.saveContent(file, fileContent);
            Sys.println((rewrite ? "✍️  Rewritten " : "🌟  Created ") + file);
            entityIndex.entities[file] = entity;
            entityIndex.invalidate();
            if (openAfterSave)
                Sys.command("code", [file]);
        }
    }

    static function createEntityFromIg(igInfo:charleywong.chrome.InstagramProfile):Entity {
        var entity = switch (entityIndex.entitiesOfUrl[igInfo.url]) {
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
            if (!entity.webpages.exists(p -> p.url == igInfo.website))
                webpages.push({
                    url: igInfo.website,
                });
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

    static function createEntityFromFb(fbPage:charleywong.chrome.FacebookProfile):Entity {
        var entity = switch (entityIndex.entitiesOfFbPage[fbPage.handle]) {
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
            if (!webpages.exists(p -> p.url == url))
                webpages.push({
                    url: url,
                });
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

        for (p in entity.webpages) {
            var url = p.url;
            Utils.isUrlAccessible(url).catchError(function(err) {
                Sys.println('⚠️  $url is not accessible. $err');
            });
        }

        return entity;
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
        app.get("/flexsearch.json", flexsearchJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+).json", entityJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)/profile.png", entityProfilePic);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)", entity);
        app.get("/search/:query.json", searchJson);
        app.get("/search/:query", search);

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
                var content = File.getContent(path);
                entityIndex.entities[path] = try {
                    Json.parse(File.getContent(path));
                } catch (e:Dynamic) {
                    trace(e);
                    return;
                }
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