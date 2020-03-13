package js.npm.hk_address_parser_lib;

import js.lib.Promise;

typedef Lang = String;

typedef Address = {
    public function coordinate():{
        lat:Float,
        lng:Float,
    };
    public function coordinates():Array<{
        lat:Float,
        lng:Float,
    }>;
    public function fullAddress(lang:Lang):String;
    public function confidence():Float;
    public function components(lang:Lang):Array<{
        translatedValue:String,
        key:String,
        translatedLabel:String
    }>;
    public function componentLabelForKey(key:String, lang:Lang):Array<Dynamic>;
    public function componentValueForKey(key:String, lang:Lang):Array<Dynamic>;
    public function dataSource():String;

    public var record: {
        nameEN:String,
        nameZH:String,
        addressEN:String,
        addressZH:String,
        x:Float,
        y:Float,
        lat:String,
        lng:String,
    }
}

@:jsRequire("hk-address-parser-lib")
extern class AddressResolver {
    static public final Address:{
        public final LANG_ZH:Lang;
        public final LANG_EN:Lang;
    };
    static public function parse(address:String):Promise<Array<Address>>;
    static public function parseBatch(addresses:Array<String>, ?options:{
        limit:Int,
    }):Promise<Array<Address>>;
}