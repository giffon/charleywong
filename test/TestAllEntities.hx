import utest.Assert;
import withyoulike.*;
using Lambda;
using StringTools;

class TestAllEntities extends utest.Test {
    function test():Void {
        var entityClasses = CompileTime.getAllClasses("withyoulike.entities", true, Entity);
        Assert.isTrue(entityClasses.length > 0);
        for (entityClass in entityClasses) {
            var entity:Entity = Type.createInstance(entityClass, []);
            for (page in entity.webpages) {
                validateUrl(page.url);
            }
            for (post in entity.posts) {
                validateUrl(post.url);
            }
        }
        Assert.pass();
    }

    static public function validateUrl(url:String) {
        var p = new sys.io.Process("curl", ["-sSLf", url, "-o", "/dev/null"]);
        var code = p.exitCode();
        var err = p.stderr.readAll().toString().rtrim();
        p.close();
        switch (code) {
            case 0: //pass
            case _: throw '$url is not accessible.\n${err}';
        }
    }
}