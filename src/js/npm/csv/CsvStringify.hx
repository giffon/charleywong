package js.npm.csv;

import js.node.stream.Transform;

@:jsRequire("csv-stringify")
extern class CsvStringify extends Transform<CsvStringify> {
    @:selfCall
    @:overload(function<T>(records:Array<Array<T>>, opts:Dynamic, ?callb:(err:Dynamic, output:String)->Void):Void {})
    static public function stringify(opts:Dynamic):CsvStringify;
}

@:jsRequire("csv-stringify/lib/sync")
extern class CsvStringifySync {
    @:selfCall
    static public function stringify<T>(records:Array<Array<T>>, opts:Dynamic):String;
}