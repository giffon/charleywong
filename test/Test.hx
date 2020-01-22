import haxe.io.*;

class Test {
    static function main():Void {
        utest.UTest.run([
            new TestAllEntities(),
            new TestUrls(),
            new TestImporter(),
        ]);
    }
}