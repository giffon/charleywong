package js.npm.hk_address_parser_lib;

import haxe.DynamicAccess;

@:jsRequire("./dclookup.js", "default")
extern class Dclookup {
    static public function dcNameFromCoordinates(lat:Float, lng:Float):DynamicAccess<{
        code:String,
        cname:String,
        ename:String,
        district:String,
        csubdistrict:String,
        esubdistrict:String
    }>;
}