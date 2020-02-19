package charleywong;

import js.Browser.*;
import js.html.*;

class ElementUtils {
    static public function getElementsByXPath(context:Node, xpath:String):Array<Element> {
        var r = document.evaluate(xpath, context, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE);
        return [
            for (i in 0...r.snapshotLength)
            cast(r.snapshotItem(i), Element)
        ];
    }
}