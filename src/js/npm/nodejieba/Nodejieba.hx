package js.npm.nodejieba;

@:jsRequire("nodejieba")
extern class Nodejieba {
    static public function cut(str:String, ?hmm:Bool):Array<String>;
    static public function cutAll(str:String):Array<String>;
    static public function cutHMM(str:String):Array<String>;
    static public function cutForSearch(str:String):Array<String>;
    static public function cutSmall(str:String, maxChar:Int):Array<String>;
}