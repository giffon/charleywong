package charleywong;

import fastify.FastifyReply;
import react.*;

class ReplyTools {
    static public function sendView(reply:FastifyReply<Dynamic,Dynamic,Dynamic,Dynamic,Dynamic>, view, ?props:Dynamic) {
        if (props == null)
            props = {};

        return try {
            var element = React.createElement(view, props);
            reply
                .header("Content-Type", 'text/html')
                .send("<!DOCTYPE html>" + ReactDOMServer.renderToStaticMarkup(element));
        } catch (e:Dynamic) {
            throw e;
        }
    }
}