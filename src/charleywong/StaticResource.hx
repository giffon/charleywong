package charleywong;

import sys.*;
import sys.io.*;
import haxe.io.*;
import haxe.macro.*;
#if nodejs
import sys.io.File;
import js.node.Buffer;
#end
using StringTools;
using Lambda;

class StaticResource {
    static public final resourcesDir = "static";

    #if (macro || !browser)
    static final hashes = new Map<String,String>();
    static public function hash(path:String):String {
        return switch (hashes[path]) {
            case null:
                hashes[path] = try {
                    haxe.crypto.Md5.make(sys.io.File.getBytes(path)).toHex();
                } catch (e) {
                    null;
                }
            case h:
                h;
        }
    }
    #end

    macro static public function R(path:String, ?warnIfNotFound:Bool = true) {
        if (!path.startsWith("/")) {
            Context.error('$path should relative to root (starts with /)', Context.currentPos());
        }

        var staticPath = Path.join([resourcesDir, path]);
        if (!FileSystem.exists(staticPath)) {
            if (warnIfNotFound) {
                Context.warning('$path does not exist', Context.currentPos());
            }
            return macro @:privateAccess $v{path};
        } else {
            var h = hash(staticPath);
            return macro @:privateAccess charleywong.StaticResource.fingerprint($v{path}, $v{h});
        }
    };

    static public function fingerprint(path:String, hash:String):String {
        var p = new Path(path);
        return Path.join([p.dir != null && p.dir != "" ? p.dir : "/", p.file + "." + hash + "." + p.ext]);
    }

    static public function parseUrl(url:String) {
        var p = new Path(url);
        var r = ~/^(.+)\.([0-9a-f]{32})$/;
        return if (!r.match(p.file)) {
            url: url,
            hash: null,
        } else {
            url: Path.join([p.dir, r.matched(1) + "." + p.ext]) + "?md5=" + r.matched(2),
            hash: r.matched(2),
        }
    }

    static public function rewriteUrl(url:String):String {
        return parseUrl(url).url;
    }
}