package js.npm.looks_same;

import js.node.Buffer;
import haxe.extern.EitherType;

typedef ImageInput = EitherType<EitherType<String, js.node.Buffer>, BoundedImage>;

typedef CoordBounds = {
    left:Float,
    top:Float,
    right:Float,
    bottom:Float,
}

typedef BoundedImage = {
    source: EitherType<String, js.node.Buffer>,
    boundingBox: CoordBounds,
}

@:jsRequire("looks-same")
extern class LooksSame {
    @:selfCall
    @:overload(function(img1:ImageInput, img2:ImageInput, options:Dynamic, callb:(err:Dynamic, result:{ equal:Bool })->Void):Void {})
    static public function looksSame(img1:ImageInput, img2:ImageInput, callb:(err:Dynamic, result:{ equal:Bool })->Void):Void;
}