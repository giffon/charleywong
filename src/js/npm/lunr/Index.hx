package js.npm.lunr;

import haxe.DynamicAccess;
import haxe.Constraints;

typedef Result = Array<{
    var ref:String;
    var score:Float;
    var matchData:MatchData;
}>;

@:jsRequire("lunr", "Index")
extern class Index {
    public function new(attrs:Dynamic):Void;

    static public function load(serializedIndex:Dynamic):Index;

    public function query(fn:()->Query):Result;

    public function search(queryString:String):Result;

    public function toJSON():Dynamic;
}