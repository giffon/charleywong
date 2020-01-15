package js.npm.lunr;

import haxe.DynamicAccess;

@:jsRequire("lunr", "MatchData")
extern class MatchData {
    public var metadata:DynamicAccess<DynamicAccess<Dynamic>>;
    public function new(term:String, field:String, metadata:Dynamic):Void;
    public function add(term:String, field:String, metadata:Dynamic):Void;
    public function combine(otherMatchData:Dynamic):Void;
}