package js.npm.flexsearch;

import haxe.Constraints;
import haxe.extern.Rest;

@:jsRequire("flexsearch")
extern class FlexSearch {
    static public function create(options:Dynamic):FlexSearch;
    static public function registerMatcher(matcher:Dynamic):Void;
    static public function registerEncoder(name:String, encoder:String->String):Void;
    static public function registerLanguage(lang:String, opts:{ stemmer:Dynamic, filter:Array<Dynamic> }):Void;
    static public function encode(name:String, string:String):String;

    
    @:overload(function (string:String, ?limit:Int, ?callback:Function):Dynamic {})
    public function search(options:Dynamic):Dynamic;

    public function add(args:Rest<Dynamic>):Void;
    public function update(id:Dynamic, string:String):Void;
    public function remove(id:Dynamic):Void;
    public function clear():Void;
    public function destroy():Void;
    public function init(options:Dynamic):Void;
    public function info():Dynamic;
    public function find(args:Rest<Dynamic>):Dynamic;
    public function where(args:Rest<Dynamic>):Dynamic;
    public function addMatcher(matcher:Dynamic):Void;
    public function encode(string:String):String;
    public function export(args:Rest<Dynamic>):Dynamic;

    @:native("import")
    public function _import(string:String):Void;

    public var id:Dynamic;
    public var length:Int;
    public var index:Dynamic;
}