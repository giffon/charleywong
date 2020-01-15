package js.npm.elasticlunr;

import haxe.Constraints;

@:jsRequire("elasticlunr")
extern class Elasticlunr {
    @:selfCall
    static public function elasticlunr(fn:Function):Index;
}