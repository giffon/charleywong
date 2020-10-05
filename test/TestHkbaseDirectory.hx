import utest.Assert;
import charleywong.*;
using Lambda;
using StringTools;

class TestHkbaseDirectory extends utest.Test {
    final index:EntityIndex;
    public function new(index:EntityIndex) {
        super();
        this.index = index;
    }

    public function test() {
        for (e in index.entitiesOfHkbase) {
            var data = HkbaseDirectory.getData(e);
            Assert.notNull(data, 'There is no HKBASE data for ' + e.id);
        }

        for (data in HkbaseDirectory.localCache) {
            var e = HkbaseDirectory.getEntity(data, index.entitiesOfHkbase);
            Assert.notNull(e, 'There is no entity for ' + data);
        }
    }
}