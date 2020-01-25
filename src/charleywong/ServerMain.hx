package charleywong;

import haxe.*;
import charleywong.views.*;
import js.npm.express.*;
import js.Node.*;
using charleywong.ExpressTools;
using StringTools;
using Lambda;

class ServerMain {
    static final port = 3000;
    static final isMain = (untyped __js__("require")).main == module;
    static var app:Application;

    static function index(req:Request, res:Response) {
        switch (req.query.search:String) {
            case null: //pass
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
                var entities = EntityIndex.entities.array();
                entities.sort((e1, e2) -> Reflect.compare(renderName(e1.name), renderName(e2.name)));
                entities;
            }
        });
    }

    static function allJson(req:Request, res:Response) {
        res.json([for (e in EntityIndex.entities) e.toJson()]);
    }

    static function entityJson(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = EntityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }
        res.json(entity.toJson());
    }

    static function entity(req:Request, res:Response) {
        var entityId:String = req.params.entityId;
        var entity = EntityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }
        res.sendView(EntityView, {
            entity: entity,
        });
    }

    static function searchJson(req:Request, res:Response) {
        var query:String = req.params.query;
        var result:Array<{id:String}> = EntityIndex.flexsearch.search({
            query: query,
            limit: 10,
        });
        res.json(result.map(r -> EntityIndex.entitiesOfId[r.id].toJson()));
    }

    static function search(req:Request, res:Response) {
        var query:String = req.params.query;
        var result:Array<{id:String}> = EntityIndex.flexsearch.search({
            query: query,
            limit: 10,
        });
        res.sendView(EntityListView, {
            slug: query.urlEncode(),
            listName: '${query} 搜尋結果',
            searchQuery: query,
            entities: result.map(r -> EntityIndex.entitiesOfId[r.id]),
        });
    }

    static function flexsearchJson(req:Request, res:Response) {
        res.json(EntityIndex.flexsearch.export({
            serialize: false,
            doc: false,
        }));
    }

    static function allowCors(req:Request, res:Response, next):Void {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        next();
    }

    static function main():Void {
        app = new Application();
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

        var cache = require("apicache").middleware;
        app.use(cache('1 hour'));

        app.use(allowCors);

        app.get("/", index);
        app.get("/list/all.json", allJson);
        app.get("/list/all", all);
        app.get("/flexsearch.json", flexsearchJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+).json", entityJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)", entity);
        app.get("/search/:query.json", searchJson);
        app.get("/search/:query", search);

        if (isMain) {
            app.listen(port, function() {
                Sys.println('http://localhost:$port');
            });
        } else {
            var serverless = require('serverless-http');
            js.Node.exports.handler = serverless(app);
        }
    }
}