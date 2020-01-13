package withyoulike;

import js.npm.express.*;
import react.*;

class ExpressTools {
    static public function sendView(res:Response, view, ?props:Dynamic):Void {
        if (props == null)
            props = {};

        try {
            var element = React.createElement(view, props);
            var stream = ReactDOMServer.renderToStaticNodeStream(element);
            res.set("Content-Type", 'text/html');
            res.write("<!DOCTYPE html>");
            stream.pipe(res);
            stream.once("error", function(e) throw e);
            stream.once("end", function() res.end());
        } catch (e:Dynamic) {
            throw e;
        }
    }
}