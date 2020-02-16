package charleywong.chrome;

import js.html.Element;
import chrome.Runtime;
import js.lib.Promise;
import charleywong.EntityIndex;
import js.html.AnchorElement;
import js.npm.mutation_summary.MutationSummary;
import js.Browser.*;
using Lambda;
using StringTools;

class Content {
    static final entityIndex = EntityIndex.embedFromDirectory("data/entity");

    static function getEntityFromFb(fbPage:String) return new Promise<Null<Entity>>(function(resolve, reject) {
        Runtime.sendMessage({ call: "getEntityFromFb", args: [fbPage] }, function(response) {
            if (response == null) {
                reject(Runtime.lastError);
            } else {
                resolve(response != false ? Entity.fromJson(response) : null);
            }
        });
    });

    static function processLink(link:AnchorElement):Void {
        if (link.dataset.charleywong != null) {
            return;
        }

        link.dataset.charleywong = "done";

        if (
            link.getAttribute("role") != "button"
            &&
            link.getAttribute("rel") != "theater"
            &&
            !link.classList.contains("see_more_link")
            &&
            !link.matches("*[role='navigation'] *[data-key^='tab_'] a")
            &&
            !link.matches("*[role='tablist'] a")
            &&
            link.querySelector(".timestampContent") == null
            &&
            link.querySelector(".livetimestamp") == null
            &&
            !(switch (link.getAttribute("href")) {
                case null: false;
                case href: href.startsWith("#");
            })
            &&
            !["See All", "See More", ""].has(link.text)
            &&
            (
                link.children.length == 0 || link.querySelector("h3") != null || link.querySelector("img") == null
            )
        ) {

            var fbRegexp = ~/^https?:\/\/(?:www.|m.)?facebook.com\/([^\/]+)/;
            var homePathRegexp = ~/^\/([^\/]+)\/?$/;
            var postPathRegexp = ~/^\/([^\/]+)\/(?:posts|photos|videos)\/?/;
            if (fbRegexp.match(link.href) && (homePathRegexp.match(link.pathname) || postPathRegexp.match(link.pathname))) {
                var fb = fbRegexp.matched(1);
                var fbIdRegexp = ~/^.+-([0-9]+)$/;
                if (fbIdRegexp.match(fb))
                    fb = fbIdRegexp.matched(1);

                getEntityFromFb(fb).then(function(entity) {
                    if (entity != null) {
                        link.classList.add("charleywong-found");
                        link.dataset.charleywongEntityId = entity.id;
                        link.innerHTML = link.innerHTML + '
                            <span href="https://charleywong.giffon.io/${entity.id}" target="_blank" class="charleywong-button"></span>
                        ';

                        link.addEventListener("click", function(evt:js.html.MouseEvent) {
                            var targetElement:Element = cast evt.target;
                            if (targetElement.classList.contains("charleywong-button")) {
                                evt.preventDefault();
                                window.open('https://charleywong.giffon.io/${entity.id}', "_blank");
                            }
                        });
                    }
                });
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