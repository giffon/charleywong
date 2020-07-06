package charleywong;

import sys.*;
import sys.io.Process;
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

    macro static public function R(path:String) {
        if (!path.startsWith("/")) {
            Context.error('$path should relative to root (starts with /)', Context.currentPos());
        }

        var staticPath = Path.join([resourcesDir, path]);
        if (!FileSystem.exists(staticPath)) {
            Context.warning('$path does not exist', Context.currentPos());
            return macro @:privateAccess $v{path};
        } else {
            var h = hash(staticPath);
            return macro @:privateAccess charleywong.StaticResource._R($v{path}, $v{h});
        }
    };

    static function _R(path:String, hash:String):String {
        return path + "?md5=" + hash;
    }
}