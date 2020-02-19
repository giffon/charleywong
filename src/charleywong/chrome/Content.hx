package charleywong.chrome;

import haxe.Timer;
import js.html.URL;
import haxe.Unserializer;
import haxe.Serializer;
import haxe.io.Path;
import js.html.Element;
import chrome.Runtime;
import js.lib.Promise;
import js.html.AnchorElement;
import js.npm.mutation_summary.MutationSummary;
import js.Browser.*;
using Lambda;
using StringTools;
using charleywong.ElementUtils;

class Content {
    static public function getEntityFromFb(fbPage:String) return new Promise<Null<Entity>>(function(resolve, reject) {
        Runtime.sendMessage(Serializer.run(Message.MsgGetEntityFromFb(fbPage)), function(response:Dynamic) {
            if (response == null) {
                reject(Runtime.lastError);
            } else {
                resolve(response != false ? response : null);
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
            // A Facebook page's left-side menu ("Home", "About", "Posts" etc.)
            !link.matches("*[role='navigation'] *[data-key^='tab_'] a")
            &&
            // A Facebook page's admin view's top bar ("Page", "Inbox", "Notifications", "Insights" etc.)
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
            !["See All", "See More", ""].has(link.text.trim())
            &&
            (
                link.children.length == 0 || link.querySelector("h3") != null || link.querySelector("img") == null
            )
        ) {

            var fbRegexp = ~/^https?:\/\/(?:www.|m.)?facebook.com\/([^\/\?#]+)/;
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
                        var href = Path.join([serverEndpoint, entity.id]);
                        var title = 'Charly Wong 和你查 "${entity.name.printAll()}"';
                        link.innerHTML = link.innerHTML + '
                            <span href="${href}" target="_blank" class="charleywong-button" title="${title.htmlEscape(true)}"></span>
                        ';

                        link.addEventListener("click", onButtonClicked);
                        link.addEventListener("auxclick", onButtonClicked);
                    }
                });
            }

        }
    }

    static function onButtonClicked(evt:js.html.MouseEvent) {
        var targetElement:Element = cast evt.target;
        if (
            targetElement.classList.contains("charleywong-button")
            &&
            // It should work for both left and middle mouse buttons.
            [1, 2].has(evt.which)
        ) {
            evt.preventDefault();
            var href = targetElement.getAttribute("href");
            window.open(href, "_blank");
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

    static public var serverEndpoint:String;

    static function onMessage(?request:Dynamic, sender, sendResponse:Dynamic->Void) {
        switch (Unserializer.run(request):Message) {
            case MsgImportToCharley(linkUrl):
                var seeMoreLinks = "*[role='main'] a.see_more_link";
                for (link in document.querySelectorAll(seeMoreLinks)) {
                    var link:AnchorElement = cast link;
                    link.click();
                    link.remove();
                };

                Timer.delay(function(){
                    for (link in document.querySelectorAll(seeMoreLinks))
                    {
                        alert('There are still "See More" buttons.');
                        return;
                    }
                    try {
                        Importer.importUrl(new URL(linkUrl));
                    } catch (e:Dynamic) {
                        alert(e);
                    }
                }, 100);
            case MsgScrollToJune:
                scrollToJune();
            case _:
                throw 'Unknown request: $request';
        }
    }

    static function scrollToJune() {
        var june = Date.fromString("2019-06-01");
        var times = document.getElementsByXPath("//*[@id='pagelet_timeline_main_column']//abbr[@data-utime]");
        var lastTimeNode = times[times.length - 1];
        var lastTime = Date.fromTime(Std.parseFloat(lastTimeNode.dataset.utime) * 1000);
        //trace('lastTime: $lastTime');
        if (lastTime.getTime() <= june.getTime() || document.querySelector("#pagelet_timeline_main_column .uiMorePager") == null) {
            lastTimeNode.scrollIntoView();
            alert("到達2019年6月頭");
        } else {
            window.scrollTo(window.scrollX, document.body.scrollHeight);
            Timer.delay(scrollToJune, 100);
        }
    }

    static function main() {
        Runtime.onMessage.addListener(onMessage);
        Settings.getSettings().then(function(settings) {
            serverEndpoint = settings.serverEndpoint;
            for (a in document.querySelectorAll("a[href]")) {
                processLink(cast a);
            }
        });
    }
}