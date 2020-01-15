package js.npm.lunr;

import haxe.Constraints;

@:jsRequire("lunr")
extern class Lunr {
    @:selfCall
    static public function lunr(fn:Function):Index;
}