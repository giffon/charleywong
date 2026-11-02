package js.npm.jimp;

import js.node.Buffer;
import haxe.extern.EitherType;
import js.lib.Promise;

typedef JimpReadInput = EitherType<String, EitherType<Buffer, js.lib.ArrayBuffer>>;

typedef Message = EitherType<String, {
    text:String,
    ?alignmentX:HorizontalAlign,
    ?alignmentY:VerticalAlign,
}>;

extern class Font {}

@:jsRequire("jimp", "Jimp")
extern class Jimp {
    static public function read(input:JimpReadInput):Promise<Jimp>;

    public function new(opts:{
        width:Int,
        height:Int,
        ?color:EitherType<Int, String>,
    }):Void;

    public var width(default, null):Int;
    public var height(default, null):Int;

    public function resize(opts:{
        w:Int,
        ?h:Int,
        ?mode:String,
    }):Jimp;

    public function composite(src:Jimp, x:Float, y:Float, ?opts:{
        ?mode:String,
        ?opacitySource:Float,
        ?opacityDest:Float,
    }):Jimp;

    public function clone():Jimp;

    public function print(opts:{
        font:Font,
        x:Float,
        y:Float,
        text:Message,
        ?maxWidth:Float,
        ?maxHeight:Float,
        ?cb:(cood:{x:Float, y:Float}) -> Void,
    }):Jimp;

    public function getBuffer(mime:String, ?opts:Dynamic):Promise<Buffer>;
}

@:jsRequire("jimp")
extern class JimpText {
    /**
        `font` is the path of a BMFont, e.g. one of `JimpFonts`.
    **/
    static public function loadFont(font:String):Promise<Font>;
    static public function measureText(font:Font, text:String):Float;
    static public function measureTextHeight(font:Font, text:String, ?maxWidth:Float):Float;
}

@:jsRequire("jimp", "JimpMime")
extern class JimpMime {
    static public final png:String;
    static public final jpeg:String;
    static public final bmp:String;
    static public final gif:String;
    static public final tiff:String;
}

@:jsRequire("jimp", "HorizontalAlign")
extern enum abstract HorizontalAlign(Int) {
    var LEFT;
    var CENTER;
    var RIGHT;
}

@:jsRequire("jimp", "VerticalAlign")
extern enum abstract VerticalAlign(Int) {
    var TOP;
    var MIDDLE;
    var BOTTOM;
}

@:jsRequire("jimp/fonts")
extern class JimpFonts {
    static public final SANS_8_BLACK:String; // Open Sans, 8px, black
    static public final SANS_10_BLACK:String; // Open Sans, 10px, black
    static public final SANS_12_BLACK:String; // Open Sans, 12px, black
    static public final SANS_14_BLACK:String; // Open Sans, 14px, black
    static public final SANS_16_BLACK:String; // Open Sans, 16px, black
    static public final SANS_32_BLACK:String; // Open Sans, 32px, black
    static public final SANS_64_BLACK:String; // Open Sans, 64px, black
    static public final SANS_128_BLACK:String; // Open Sans, 128px, black

    static public final SANS_8_WHITE:String; // Open Sans, 8px, white
    static public final SANS_16_WHITE:String; // Open Sans, 16px, white
    static public final SANS_32_WHITE:String; // Open Sans, 32px, white
    static public final SANS_64_WHITE:String; // Open Sans, 64px, white
    static public final SANS_128_WHITE:String; // Open Sans, 128px, white
}
