package js.npm.elasticlunr;

@:jsRequire("elasticlunr", "tokenizer")
extern class Tokenizer {
    @:selfCall
    static public function tokenizer(str:String):Array<Dynamic>;

    static public var defaultSeperator:EReg;
    static public var seperator:EReg;
    static public function setSeperator(sep:Dynamic):Void;
    static public function getSeperator():Dynamic;
    static public function resetSeperator():Void;
}