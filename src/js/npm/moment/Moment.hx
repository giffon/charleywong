package js.npm.moment;

@:jsRequire("moment")
extern class Moment {
    @:selfCall
    static public function moment(?date:String, ?format:String):Moment;

    public function add(n:Int, unit:String):Moment;
    public function subtract(n:Int, unit:String):Moment;
    public function toDate():js.lib.Date;
}