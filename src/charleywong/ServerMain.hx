package charleywong;

import haxe.Json;
import charleywong.views.Index;
import js.npm.express.*;
import js.Node.*;
using charleywong.ExpressTools;

class ServerMain {
    static final port = 3000;
    static final isMain = (untyped __js__("require")).main == module;
    static var app:Application;

    static function index(req:Request, res:Response) {
        res.sendView(Index);
    }

    static function entityJson(req:Request, res:Response) {
        var entityId = req.params.entityId;
        var entity = EntityIndex.entitiesOfId[entityId];
        if (entity == null) {
            res.status(404).send('Entity of id $entityId not found.');
            return;
        }
        res.json(entity.toJson());
    }

    static function main():Void {
        app = new Application();
        app.get("/", index);
        app.get("/:entityId([A-Za-z0-9\\-_\\.]+).json", entityJson);

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