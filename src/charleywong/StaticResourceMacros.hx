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
#if server
import fastify.*;
#end
using StringTools;
using Lambda;

import charleywong.StaticResource.*;

class StaticResourceMacros {
    macro static public function R(path:String, ?warnIfNotFound:Bool = true) {
        if (!path.startsWith("/")) {
            Context.error('$path should relative to root (starts with /)', Context.currentPos());
        }

        if (!exists(path)) {
            if (warnIfNotFound) {
                Context.warning('$path does not exist', Context.currentPos());
            }
            return macro @:privateAccess $v{path};
        } else {
            final h = hash(path);
            return macro @:privateAccess charleywong.StaticResource.fingerprint($v{path}, $v{h});
        }
    };
}