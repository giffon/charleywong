package js.npm.autolinker;

@:jsRequire("autolinker")
extern class Autolinker {
    static public function link(textToAutolink:String, ?options:Dynamic):String;
}