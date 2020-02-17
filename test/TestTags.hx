import haxe.DynamicAccess;
import haxe.Json;
import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
import sys.io.*;
using Lambda;
using StringTools;

class TestTags extends utest.Test {
    function testSchema() {
        var schema:DynamicAccess<Dynamic> = Json.parse(File.getContent("data/schema/Tag.json"));
        var schemaEnum:Array<String> = schema["enum"];
        for (t in Tag.tags.keys()) {
            Assert.isTrue(schemaEnum.has(t.id));
        }

        for (t in schemaEnum) {
            Assert.isTrue(Tag.tags[t] != null);
        }
    }
}