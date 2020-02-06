import charleywong.EntityIndex;
import haxe.io.*;

class Test {
    static function main():Void {
        var index = EntityIndex.loadFromDirectory("data/entity");
        switch (Sys.args()) {
            case [] | ["push"]:
                utest.UTest.run([
                    new TestAllEntities(index),
                ]);
            case ["schedule"]:
                utest.UTest.run([
                    new TestAllEntities(index),
                    new TestUrls(index),
                ]);
            case args:
                throw 'Unkown args $args';
        }
    }
}