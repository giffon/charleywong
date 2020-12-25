package charleywong;

import fastify.FastifyReply;
import react.*;

class ReplyTools {
    static public function sendView(reply:FastifyReply<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>, view, ?props:Dynamic) {
        if (props == null)
            props = {};

        return try {
            var pass = new js.node.stream.PassThrough();
            pass.write("<!DOCTYPE html>");
            var element = React.createElement(view, props);
            var stream = ReactDOMServer.renderToStaticNodeStream(element);
            stream.once("error", function(e) throw e);
            stream.once("end", function() pass.end());
            stream.pipe(pass);
            reply
                .header("Content-Type", 'text/html')
                .send(pass);
        } catch (e:Dynamic) {
            throw e;
        }
    }
}