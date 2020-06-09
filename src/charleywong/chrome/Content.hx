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
                    textNode.innerHTML = textNode.innerHTML.trim() + '
                        <span href="${href}" target="_blank" class="charleywong-button" title="${title.htmlEscape(true)}"></span>
                    '.trim();
                    link.addEventListener("pointerenter", onPointerEntered, true);
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

    static function onPointerEntered(evt:js.html.MouseEvent) {
        var targetElement:Element = cast evt.target;
        if (
            targetElement.classList.contains("charleywong-button")
        ) {
            targetElement.classList.add("hover");
            var rect = targetElement.getBoundingClientRect();
            overlay.classList.add("hover");
            overlay.href = targetElement.getAttribute("href");
            overlay.title = targetElement.title;
            overlay.style.left = rect.x + "px";
            overlay.style.top = rect.y + "px";
            overlay.style.width = rect.width + "px";
            overlay.style.height = rect.height + "px";
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
                scroll = true;
                document.addEventListener("keyup", stopScrollingListener);
                scrollToJune();
            case _:
                throw 'Unknown request: $request';
        }
    }

    static function stopScrollingListener(evt:KeyboardEvent) {
        if (evt.key == "Escape") {
            scroll = false;
        }
    }

    static public function timestampFromString(timeString:String):Float {
        return if (~/^[0-9]/.match(timeString))
            Date.now().getTime();
        else if (timeString.startsWith("Yesterday"))
            Moment.moment().subtract(1, "day").toDate().getTime();
        else
            Moment.moment(timeString, timeString.indexOf("at") > 0 ? "MMMM D" : "LL").toDate().getTime();
    }

    static var scroll = false;

    static function scrollToJune(?oldArticleCount:Int) {
        if (!scroll) {
            return;
        }

        var june = Date.fromString("2019-06-01");
        var posts = [
            for (node in document.querySelectorAll("#pagelet_timeline_main_column .userContentWrapper"))
            if (!(cast node:Element).matches(".userContentWrapper .userContentWrapper")) // ignore nested posts, e.g. the shared "memory" post
            if ((cast node:Element).querySelector("*[data-tooltip-content='Pinned Post']") == null) // ignore pinned posts
            node
        ];
        if (posts.length != 0) { // old layout
            var scrollToJune = scrollToJune.bind(posts.length);
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

            if (document.querySelector("div[role='main'] div[role='article'] > div[role='progressbar']") == null) {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(function() alert("到達 timeline 底部"), 100);
                return;
            }

            var feed:DivElement = cast document.getElementsByXPath("//div[@role='feed'][not(descendant::h1//*[text()='PINNED POST'])]")[0];

            // when there is no pinned post, there is no role='feed'
            if (feed == null)
                feed = cast document.getElementsByXPath("//div[@role='main']").pop();

            var posts = [
                for (node in feed.querySelectorAll("div[role='article']"))
                (cast node:DivElement)
            ];

            var scrollToJune = scrollToJune.bind(posts.length);

            if (posts.length == oldArticleCount) {
                Timer.delay(scrollToJune, 100);
                return;
            }
            
            if (posts.length == 0) {
                Timer.delay(function() alert("找不到 div[role='article']"), 100);
                return;
            }
            var times = posts
                .map(node -> node.querySelector("span[aria-labelledby]"))
                .filter(timeSpan -> timeSpan != null)
                .map(timeSpan -> {
                    node: (cast timeSpan:SpanElement),
                    time: {
                        var labelledby = timeSpan.getAttribute("aria-labelledby");
                        var timeString = timeSpan.ownerDocument.getElementById(labelledby).innerText;
                        timestampFromString(timeString);
                    },
                });

            if (times.length == 0) {
                times = posts
                    .map(node -> node.querySelector("span[id] a[role='link']"))
                    .filter(timeSpan -> timeSpan != null)
                    .map(timeSpan -> {
                        node: (cast timeSpan:SpanElement),
                        time: timestampFromString(timeSpan.innerText)
                    });
            }

            if (times.length == 0) {
                Timer.delay(function() alert("讀不到時間資訊"), 100);
                return;
            }
            var beforeJuneNode = times.find(t -> t.time < june.getTime());
            if (beforeJuneNode != null) {
                beforeJuneNode.node.scrollIntoView({
                    block: ScrollLogicalPosition.END,
                });
                Timer.delay(function() alert("到達2019年6月頭"), 100);
            } else {
                window.scrollTo(window.scrollX, document.body.scrollHeight);
                Timer.delay(scrollToJune, 100);
            }
        }
    }

    static var overlay:AnchorElement;

    static function main() {
        Runtime.onMessage.addListener(onMessage);
        Settings.getSettings().then(function(settings) {
            serverEndpoint = settings.serverEndpoint;
            for (a in document.querySelectorAll("a[href]")) {
                processLink(cast a);
            }
        });

        overlay = document.createAnchorElement();
        overlay.className = "charleywong-overlay";
        overlay.target = "_blank";
        overlay.addEventListener("pointerout", function(evt){
            overlay.classList.remove("hover");
            for (btn in document.querySelectorAll(".charleywong-button.hover")) {
                var btn:Element = cast btn;
                btn.classList.remove("hover");
            }
        });
        document.body.appendChild(overlay);
    }
}