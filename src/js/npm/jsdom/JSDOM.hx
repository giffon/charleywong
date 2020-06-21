package js.npm.jsdom;

import js.html.Window;

@:jsRequire("jsdom", "JSDOM")
extern class JSDOM {
    public function new(html:String, ?options:Dynamic):Void;
    public var window:Window;
}