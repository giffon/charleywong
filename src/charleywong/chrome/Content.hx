package charleywong.chrome;

import js.html.*;
import haxe.*;
import haxe.io.Path;
import chrome.Runtime;
import js.lib.Promise;
import js.npm.mutation_summary.MutationSummary;
import js.npm.moment.Moment;
import js.Browser.*;
import charleywong.UrlExtractors.*;
using Lambda;
using StringTools;
using charleywong.ElementUtils;

class Content {
    static public function getEntityFromUrl(url:String) return new Promise<Null<Entity>>(function(resolve, reject) {
        Runtime.sendMessage(Serializer.run(Message.MsgGetEntityFromUrl(url)), function(response:Dynamic) {
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
            !["See All", "See More", ""].has(link.innerText)
        ) {
            getEntityFromUrl(link.href).then(function(entity) {
                if (entity != null) {
                    link.classList.add("charleywong-found");
                    link.dataset.charleywongEntityId = entity.id;
                    var href = Path.join([serverEndpoint, entity.id]);
                    var title = 'Charly Wong 和你查 "${entity.name.printAll()}"';
                    var textNode = getInnerSingleChild(link);
                    textNode.innerHTML = textNode.innerHTML + '
                        <span href="${href}" target="_blank" class="charleywong-button" title="${title.htmlEscape(true)}"></span>
                    ';

                    link.addEventListener("click", onButtonClicked);
                    link.addEventListener("auxclick", onButtonClicked);
                }
            });
        }
    }

    static function getInnerSingleChild(e:Element):Element {
        return switch ([
            for (c in e.children)
            if (c.innerText != "")
            c
        ]) {
            case []: e;
            case [c]: getInnerSingleChild(c);
            case _: e;
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
                switch (extractFbHomePage(new URL(linkUrl))) { // should expend the "see more" when importing fb profile
                    case null:
                        try {
                            Importer.importUrl(new URL(linkUrl));
                        } catch (e:Dynamic) {
                            alert(e);
                        }
                    case _:
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
                }
            case MsgScrollToJune:
                scrollToJune();
            case _:
                throw 'Unknown request: $request';
        }
    }

    static public function timestampFromTimeSpan(timeSpan:SpanElement):Float {
        var timeString = [
            for (charSpan in timeSpan.querySelectorAll("span[data-content]:not([style='display: none;'])"))
            (cast charSpan:SpanElement).dataset.content
        ].join("");
        return if (~/^[0-9]/.match(timeString))
            Date.now().getTime();
        else if (timeString.startsWith("Yesterday"))
            Moment.moment().subtract(1, "day").toDate().getTime();
        else
            Moment.moment(timeString, timeString.indexOf("at") > 0 ? "MMMM D" : "LL").toDate().getTime();
    }

    static function scrollToJune() {
        var june = Date.fromString("2019-06-01");
        var posts = [
            for (node in document.querySelectorAll("#pagelet_timeline_main_column .userContentWrapper"))
            if (!(cast node:Element).matches(".userContentWrapper .userContentWrapper")) // ignore nested posts, e.g. the shared "memory" post
            if ((cast node:Element).querySelector("*[data-tooltip-content='Pinned Post']") == null) // ignore pinned posts
            node
        ];
        if (posts.length != 0) { // old layout
            var times = posts.map(node -> (cast node:Element).querySelector("abbr[data-utime]"));
            var beforeJuneNode = times.find(node -> Std.parseFloat(node.dataset.utime) * 1000 < june.getTime());
            if (beforeJuneNode != null) {
                beforeJuneNode.scrollIntoView({
                    block: ScrollLogicalPosition.END,
                });
                Timer.delay(function() alert("到達2019年6月頭"), 100);
            } else if (document.querySelector("#pagelet_timeline_main_column .uiMorePager") == null) {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(function() alert("到達 timeline 底部"), 100);
            } else {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(scrollToJune, 100);
            }
        } else {
            var feed:DivElement = cast document.getElementsByXPath("//div[@role='feed'][not(descendant::h1//*[text()='PINNED POST'])]")[0];

            // when there is no pinned post, there is no role='feed'
            if (feed == null)
                feed = cast document.getElementsByXPath("//div[@role='main']//div[@role='main']")[0];

            var posts = [
                for (node in feed.querySelectorAll("div[role='article']"))
                (cast node:DivElement)
            ];
            var times = posts
                .map(node -> node.querySelectorAll("div > span[dir='auto']")[1])
                .filter(timeSpan -> timeSpan != null)
                .map(timeSpan -> {
                    node: (cast timeSpan:SpanElement),
                    time: timestampFromTimeSpan(cast timeSpan),
                });
            var beforeJuneNode = times.find(t -> t.time < june.getTime());
            if (beforeJuneNode != null) {
                beforeJuneNode.node.scrollIntoView({
                    block: ScrollLogicalPosition.END,
                });
                Timer.delay(function() alert("到達2019年6月頭"), 100);
            } else if (document.querySelector("div[role='main'] div[role='article'] > div[role='progressbar']") == null) {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(function() alert("到達 timeline 底部"), 100);
            } else {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(scrollToJune, 100);
            }
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