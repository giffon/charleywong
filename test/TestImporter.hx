import haxe.PosInfos;
import utest.Assert;
import charleywong.*;
import haxe.ds.*;
using Lambda;
using StringTools;

class TestImporter extends utest.Test {
    function test():Void {
        Assert.equals(0, Sys.command("python3", ["import.py", "https://www.facebook.com/thebookcure.hk/posts/2729989220398638"]));
    }
}