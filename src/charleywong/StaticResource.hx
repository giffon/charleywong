package charleywong;

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
    static public var resourcesDir(default, never) = "static";

    #if macro
    static var hashes(default, never) = new Map<String,String>();
    static function hash(path:String) {
        return switch (hashes[path]) {
            case null:
                var p = new Process("md5sum", [path]);
                if (p.exitCode() != 0) throw p.stderr.readAll().toString();
                var hash = p.stdout.readAll().toString().split(" ")[0];
                p.close();
                hashes[path] = hash;
            case h:
                h;
        }
    }
    #end

    macro static public function R(path:String) {
        if (!path.startsWith("/")) {
            Context.error('$path should relative to root (starts with /)', Context.currentPos());
        }

        var h = hash(Path.join([resourcesDir, path]));

        return macro @:privateAccess charleywong.StaticResource._R($v{path}, $v{h});
    };

    static function _R(path:String, hash:String):String {
        return path + "?md5=" + hash;
    }
}