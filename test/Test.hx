import charleywong.EntityIndex;
import haxe.io.*;

class Test {
    static function main():Void {
        var index = EntityIndex.loadFromDirectory("data");
        utest.UTest.run([
            new TestAllEntities(index),
            new TestUrls(index),
            // new TestImporter(),
        ]);
    }
}