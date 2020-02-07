import charleywong.EntityIndex;
import haxe.io.*;

class Test {
    static function main():Void {
        var index = EntityIndex.loadFromDirectory("data/entity");
        var tests:Array<utest.Test> = [
            new TestAllEntities(index),
            new TestSchema(),
            new TestTags(),
        ];
        switch (Sys.args()) {
            case [] | ["push"]:
                utest.UTest.run(tests);
            case ["schedule"]:
                utest.UTest.run(tests.concat([
                    new TestUrls(index),
                ]));
            case args:
                throw 'Unkown args $args';
        }
    }
}