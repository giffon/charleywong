package js.npm.lunr;

import haxe.Constraints;
import haxe.extern.*;

@:jsRequire("lunr", "Pipeline")
extern class Pipeline {
    public function new():Void;
    static public function load(serialised:Dynamic):Pipeline;
    static public function registerFunction(fn:Function, label:String):Void;
    public function add(functions:Rest<Function>):Void;
    public function after(existingFn:Function, newFn:Function):Void;
    public function before(existingFn:Function, newFn:Function):Void;
    public function remove(fn:Function):Void;
    public function reset():Void;
    public function run(tokens:Array<String>):Array<Dynamic>;
    public function runString(str:String, ?metadata:Dynamic):Dynamic;
    public function toJSON():Dynamic;
}