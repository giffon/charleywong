package js.npm.jimp;

import js.node.Buffer;
import haxe.extern.EitherType;
import js.lib.Promise;

typedef JimpReadInput = EitherType<String, EitherType<Buffer, {
    url:String,
    ?headers:Dynamic
}>>;

@:jsRequire("jimp")
extern class Jimp {
    static public final MIME_PNG:String;
    static public final MIME_JPEG:String;
    static public final MIME_BMP:String;

    static public function read(input:JimpReadInput):Promise<Jimp>;

    public function resize(w:Float, h:Float, ?mode:Dynamic):Jimp;

    public function composite(src:Jimp, x:Float, y:Float, ?opts:{ mode:String, opacitySource:Float, opacityDest:Float }):Jimp;
    
    public function clone():Jimp;

    public function getBuffer(mime:String, cb:Buffer->Void):Void;
    public function getBufferAsync(mime:String):Promise<Buffer>;
}