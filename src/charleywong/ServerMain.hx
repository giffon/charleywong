package charleywong;

import haxe.Json;
import charleywong.views.*;
import js.npm.express.*;
import js.Node.*;
using charleywong.ExpressTools;
using StringTools;

class ServerMain {
    static final port = 3000;
    static final isMain = (untyped __js__("require")).main == module;
    static var app:Application;

    static function index(req:Request, res:Response) {
        switch (req.query.search:String) {
            case null: //pass
            case search:
                res.redirect("search/" + search.urlEncode() + ".json");
                return;
        }
        res.sendView(Index);
    }

    static function entitiesJson(req:Request, res:Response) {
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

    static function flexsearchJson(req:Request, res:Response) {
        res.json(EntityIndex.flexsearch.export({
            serialize: false,
            doc: false,
        }));
    }

    static function main():Void {
        app = new Application();
        app.set('json spaces', 2);
        app.use(Express.Static("static"));
        app.get("/", index);
        app.get("/entities.json", entitiesJson);
        app.get("/flexsearch.json", flexsearchJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+).json", entityJson);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+)", entity);
        app.get("/search/:query.json", searchJson);

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