package js.npm.fastify;

import js.lib.Promise;
import js.node.http.IncomingMessage;

typedef RouteHandler = (req:FastifyRequest, reply:FastifyReply) -> Any;

@:jsRequire("fastify")
extern class Fastify {
    @:selfCall static public function call(?opts:Dynamic):FastifyInstance;
}

extern class FastifyInstance {
    public function register(plugin:Dynamic, ?opts:Dynamic):FastifyInstance;
    public function addHook(name:String, hook:RouteHandler):FastifyInstance;
    public function get(path:String, handler:RouteHandler):FastifyInstance;
    public function post(path:String, handler:RouteHandler):FastifyInstance;
    public function listen(opts:{
        ?port:Int,
        ?host:String,
    }):Promise<String>;
    public function close():Promise<Void>;
}

extern class FastifyRequest {
    public final raw:IncomingMessage;
    public final url:String;
    public final method:String;
    /**
        Without the port.
    **/
    public final hostname:String;
    public final headers:haxe.DynamicAccess<String>;
    public final params:Dynamic;
    public final query:Dynamic;
    public final body:Dynamic;
}

extern class FastifyReply {
    public function status(statusCode:Int):FastifyReply;
    public function code(statusCode:Int):FastifyReply;
    public function header(key:String, value:Dynamic):FastifyReply;
    public function type(contentType:String):FastifyReply;
    public function redirect(url:String, ?code:Int):FastifyReply;
    public function send(?payload:Dynamic):FastifyReply;
    /**
        Provided by @fastify/static.
    **/
    public function sendFile(filename:String, ?rootPath:String):FastifyReply;
}
