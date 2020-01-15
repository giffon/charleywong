package js.npm.lunr;

@:jsRequire("lunr", "Query")
extern class Query {
    public function new():Void;
    public var clauses:Array<Dynamic>;
    public var allFields:Array<Dynamic>;

    static public var presence:Float;
    static public final wildcard:{
        final NONE:String;
        final LEADING:String;
        final TRAILING:String;
    };

    public function clause(clause:Dynamic):Query;
    public function isNegated():Bool;
    public function term(term:Dynamic, ?optionsopt:Dynamic):Query;
}