package charleywong;

import fastify.types.reply.FastifyReply;
import react.*;

class ReplyTools {
    static public function sendView
    <RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, SchemaCompiler, TypeProvider, ReplyType>
    (
        reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, SchemaCompiler, TypeProvider, ReplyType>,
        view,
        ?props:Dynamic
    ) {
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