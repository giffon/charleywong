package charleywong;

import sys.*;
import sys.io.*;
import haxe.io.*;
import haxe.macro.*;
#if nodejs
import sys.io.File;
import js.node.Buffer;
import js.node.http.IncomingMessage;
import js.html.URLSearchParams;
#end
#if (!browser && !macro)
import js.lib.Promise;
import fastify.*;
import fastify.types.instance.FastifyInstance;
import fastify.types.reply.FastifyReply;
import fastify.types.request.FastifyRequest;
#end
using StringTools;
using Lambda;

class StaticResource {
    static public final resourcesDir = "static";

    #if (macro || !browser)
    static final hashes = new Map<String,String>();
    static public function hash(path:String):String {
        if (!path.startsWith("/")) {
            throw '$path should relative to root (starts with /)';
        }
        return switch (hashes[path]) {
            case null:
                hashes[path] = try {
                    haxe.crypto.Md5.make(sys.io.File.getBytes(haxe.io.Path.join([charleywong.StaticResource.resourcesDir, path]))).toHex();
                } catch (e) {
                    null;
                }
            case h:
                h;
        }
    }
    static public function exists(path:String):Bool {
        if (!path.startsWith("/")) {
            throw '$path should relative to root (starts with /)';
        }
        final staticPath = Path.join([resourcesDir, path]);
        return hashes.exists(path) || (FileSystem.exists(staticPath) && !FileSystem.isDirectory(staticPath));
    }
    #end

    #if (!browser && !macro)
    static public function hook
    <RouteGeneric, RawServer, RawRequest, RawReply, SchemaCompiler, TypeProvider, ContextConfig, Logger, RequestType, ReplyType>
    (
        req:FastifyRequest<RouteGeneric, RawServer, RawRequest, SchemaCompiler, TypeProvider, ContextConfig, Logger, RequestType>,
        reply:FastifyReply<RawServer, RawRequest, RawReply, RouteGeneric, ContextConfig, SchemaCompiler, TypeProvider, ReplyType>
    ):Promise<Any> {
        final url = new js.html.URL(req.url, "http://example.com");
        final path = url.pathname.urlDecode();
        // if the file exists (no fingerprint)
        if (StaticResource.exists(path)) {
            // trace('file requested without fingerprint');
            final actual = StaticResource.hash(path);
            final fpUrl = StaticResource.fingerprint(path, actual);
            reply
                .header("Cache-Control", "public, max-age=0, stale-while-revalidate=604800") // stale-while-revalidate: 7 days
                .redirect(fpUrl);
            return Promise.resolve(null);
        }

        switch (StaticResource.parseUrl(path)) {
            case null:
                // no fingerprint in url
                // pass to the other handlers
                return Promise.resolve();
            case {
                file: file,
                hash: hash,
            }:
                // trace(file);
                final actual = StaticResource.hash(file);
                if (hash == actual) {
                    // trace('hash matched');
                    return Promise.resolve(untyped reply
                        .header("Cache-Control", "public, max-age=31536000, immutable") // 1 year
                        .sendFile(file)
                    );
                } else {
                    // trace('hash mismatch');
                    final fpUrl = StaticResource.fingerprint(file, actual);
                    reply
                        .header("Cache-Control", "public, max-age=0, stale-while-revalidate=604800") // stale-while-revalidate: 7 days
                        .redirect(fpUrl);
                    return Promise.resolve(null);
                }
        }
    }
    #end

    static public function fingerprint(path:String, hash:String):String {
        final p = new Path(path);
        return Path.join([p.dir != null && p.dir != "" ? p.dir : "/", p.file.urlEncode() + "." + hash + "." + p.ext]);
    }

    static public function parseUrl(url:String) {
        final p = new Path(url);
        final r = ~/^(.+)\.([0-9a-f]{32})$/;
        return if (!r.match(p.file)) {
            null;
        } else {
            file: Path.join(["/", p.dir, r.matched(1) + "." + p.ext]).urlDecode(),
            hash: r.matched(2),
        }
    }
}