package charleywong;

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

    static function main():Void {
        app = new Application();
        app.get("/", index);

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