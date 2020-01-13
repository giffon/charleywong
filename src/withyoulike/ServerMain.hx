package withyoulike;

import withyoulike.views.Index;
import js.npm.express.*;
using withyoulike.ExpressTools;

class ServerMain {
    static final port = 3000;
    static var app:Application;

    static function index(req:Request, res:Response) {
        res.sendView(Index);
    }

    static function main():Void {
        app = new Application();
        app.get("/", index);
        app.listen(port, function() {
            Sys.println('http://localhost:$port');
        });
    }
}