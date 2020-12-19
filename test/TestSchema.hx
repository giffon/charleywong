import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestSchema extends utest.Test {
    function testEntitiesAgainstSchema() {
        var p = new sys.io.Process("npx", ["ajv", "-d", "data/entity/*.json", "-s", "data/schema/Entity.json", "-r", "data/schema/!(Entity).json"]);
        var code = p.exitCode();
        Assert.equals(0, code, p.stderr.readAll().toString());
    }
}