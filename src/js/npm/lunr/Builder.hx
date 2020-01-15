package js.npm.lunr;

import haxe.Constraints;

@:jsRequire("lunr", "Builder")
extern class Builder {
    public function new():Void;
    public function add(doc:Dynamic, ?attributes:Dynamic):Void;
    public function b(number:Float):Void;
    public function build():Index;
    public function field(fieldName:String, ?attributes:Dynamic):Void;
    public function k1(number:Float):Void;
    public function ref(ref:String):Void;
    public function use(plugin:Function):Void;
}