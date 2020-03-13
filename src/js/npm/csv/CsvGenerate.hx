package js.npm.csv;

import js.node.stream.Readable;

@:jsRequire("csv-generate")
extern class CsvGenerate extends Readable<CsvGenerate> {
    @:selfCall
    static public function generate(opts:Dynamic, ?callb:haxe.Constraints.Function):CsvGenerate;
}

@:jsRequire("csv-generate/lib/sync")
extern class CsvGenerateSync {
    @:selfCall
    static public function generate(opts:Dynamic):CsvGenerate;
}