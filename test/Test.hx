import charleywong.EntityIndex;
import haxe.io.*;

class Test {
    static function main():Void {
        final index = EntityIndex.loadFromDirectory("data/entity");
        final tests:Array<utest.Test> = [
            new TestAllEntities(index),
            new TestSchema(),
            new TestTags(),
        ];
        switch (Sys.args()) {
            case [] | ["push" | "pull_request"]:
                utest.UTest.run(tests);
            case ["post-deployment", host]:
                utest.UTest.run([new TestPostDeployment(host)]);
            case ["schedule"]:
                utest.UTest.run(tests.concat([
                    new TestUrls(index),
                ]));
            case args:
                throw 'Unkown args $args';
        }
    }
}