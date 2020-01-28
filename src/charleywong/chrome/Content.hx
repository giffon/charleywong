package charleywong.chrome;

import charleywong.EntityIndex;
import js.html.AnchorElement;
import js.npm.mutation_summary.MutationSummary;
import js.Browser.*;
using StringTools;

class Content {
    static function processLink(link:AnchorElement):Void {
        if (link.dataset.charleywong != null) {
            return;
        }

        link.dataset.charleywong = "done";

        if (link.children.length == 0 || link.querySelector("h3") != null) {

            var fbRegexp = ~/^https?:\/\/(?:www.)?facebook.com\/([^\/]+)/;
            if (fbRegexp.match(link.href)) {
                var fb = fbRegexp.matched(1);
                var fbIdRegexp = ~/^.+-([0-9]+)$/;
                if (fbIdRegexp.match(fb))
                    fb = fbIdRegexp.matched(1);
                switch (EntityIndex.entitiesOfFbPage[fb]) {
                    case null: //pass
                    case entity:
                        link.outerHTML = "<span>" + link.outerHTML + ' <a href="https://charleywong.giffon.io/${entity.id}" target="_blank" style="position:absolute;margin-left: 0.2em;">[查]</a></span>';
                }
            }

        }
    }

    static final observer = new MutationSummary({
        queries: [{
            element: "a",
            elementAttributes: "href",
        }],
        callback: function(results:Array<ElementQueryResult>) {
            var result = results[0];
            for (a in result.added.concat(result.attributeChanged.href)) {
                processLink(cast a);
            }
        }
    });

    static function main() {
        for (a in document.querySelectorAll("a[href]")) {
            processLink(cast a);
        }
    }
}