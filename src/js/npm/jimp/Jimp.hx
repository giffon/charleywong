package js.npm.jimp;

import js.node.Buffer;
import haxe.extern.EitherType;
import js.lib.Promise;

typedef JimpReadInput = EitherType<String, EitherType<Buffer, {
    url:String,
    ?headers:Dynamic
}>>;

typedef Message = EitherType<String, {
    text:String,
    alignmentX:String,
    alignmentY:String,
}>;

extern class Font {}

@:jsRequire("jimp")
extern class Jimp {
    static public final MIME_PNG:String;
    static public final MIME_JPEG:String;
    static public final MIME_BMP:String;

    static public final HORIZONTAL_ALIGN_CENTER:String;
    static public final VERTICAL_ALIGN_MIDDLE:String;

    static public final FONT_SANS_8_BLACK:String; // Open Sans, 8px, black
    static public final FONT_SANS_10_BLACK:String; // Open Sans, 10px, black
    static public final FONT_SANS_12_BLACK:String; // Open Sans, 12px, black
    static public final FONT_SANS_14_BLACK:String; // Open Sans, 14px, black
    static public final FONT_SANS_16_BLACK:String; // Open Sans, 16px, black
    static public final FONT_SANS_32_BLACK:String; // Open Sans, 32px, black
    static public final FONT_SANS_64_BLACK:String; // Open Sans, 64px, black
    static public final FONT_SANS_128_BLACK:String; // Open Sans, 128px, black

    static public final FONT_SANS_8_WHITE:String; // Open Sans, 8px, white
    static public final FONT_SANS_16_WHITE:String; // Open Sans, 16px, white
    static public final FONT_SANS_32_WHITE:String; // Open Sans, 32px, white
    static public final FONT_SANS_64_WHITE:String; // Open Sans, 64px, white
    static public final FONT_SANS_128_WHITE:String; // Open Sans, 128px, white

    static public function read(input:JimpReadInput):Promise<Jimp>;

    static public function create(w:Int, h:Int, bg:Dynamic):Promise<Jimp>;

    public function resize(w:Int, h:Int, ?mode:Dynamic):Jimp;

    public function composite(src:Jimp, x:Float, y:Float, ?opts:{ mode:String, opacitySource:Float, opacityDest:Float }):Jimp;
    
    public function clone():Jimp;

    static public function loadFont(font:String):Promise<Font>;
    static public function measureText(font:Font, text:String):Float;
    static public function measureTextHeight(font:Font, text:String, ?maxWidth:Float):Float;
    public function print(font:Font, x:Float, y:Float, message:Message, ?maxWidth:Float, ?maxHeight:Float, ?cb:(err:Dynamic, image:Jimp, cood:{ x:Float, y:Float })->Void):Jimp;

    public function getBuffer(mime:String, cb:Buffer->Void):Void;
    public function getBufferAsync(mime:String):Promise<Buffer>;
}