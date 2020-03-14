package js.npm.pngjs;

import js.node.stream.Transform;
import js.node.Buffer;

@:jsRequire("pngjs", "PNG")
extern class PNG extends Transform<PNG> {
    public function new(options:Dynamic):Void;
    public function pack():PNG;
    public function bitblt(dst:PNG, sx:Int, sy:Int, w:Int, h:Int, dx:Int, dy:Int):Void;
    public final width:Int;
    public final height:Int;
    public final data:Buffer;
    public final gamma:Float;
    static public final sync:{
        public function read(buffer:Buffer):PNG;
        public function write(png:PNG):Buffer;
        public function adjustGamma(src:PNG):Void;
    }
}