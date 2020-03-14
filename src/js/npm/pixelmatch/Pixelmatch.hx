package js.npm.pixelmatch;

import js.lib.*;
import js.node.Buffer;
import haxe.extern.EitherType;

typedef ImageInput = EitherType<Buffer, EitherType<Uint8Array, Uint8ClampedArray>>

@:jsRequire("pixelmatch")
extern class Pixelmatch {
    @:selfCall
    static public function pixelmatch(img1:ImageInput, img2:ImageInput, output:Null<ImageInput>, width:Int, height:Int, ?options:Dynamic):Int;
}