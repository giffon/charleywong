package js.facebook;

import js.html.Element;
import haxe.Constraints;

@:native("FB")
extern class FB {
    static public function init(params:Dynamic):Void;
    static public final XFBML:{
        public function parse(?dom:Element, ?cb:Function):Void;
    }
}