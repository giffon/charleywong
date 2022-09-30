package charleywong.chrome;

import js.html.*;
import haxe.*;
import haxe.io.Path;
import global.chrome.Runtime;
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
                        <span href="${href}" target="_blank" rel="noopener" class="charleywong-button" title="${title.htmlEscape(true)}"></span>
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
                (switch (new URL(linkUrl)) {
                    // case extractFbPost(_) => fb if (fb != null):
                    //     Utils.getCanonical(linkUrl.replace("https://www.facebook.com/", "https://m.facebook.com/"))
                    //         .then(url -> {
                    //             trace(url);
                    //             url;
                    //         })
                    //         .then(Utils.followRedirect)
                    //         .catchError(err -> {
                    //             trace(err);
                    //             linkUrl;
                    //         });
                    case _:
                        Promise.resolve(linkUrl);
                }).then(linkUrl -> {
                    try {
                        Importer.importUrl(new URL(linkUrl))
                            .catchError(alert);
                    } catch (e:Exception) {
                        alert(e.message + "\n" + e.stack);
                    }
                });     
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
        console.debug("timestampFromString(" + Json.stringify(timeString) + ")");
        var time = if (~/^[0-9]/.match(timeString))
            Date.now().getTime();
        else if (timeString.startsWith("Yesterday"))
            Moment.moment().subtract(1, "day").toDate().getTime();
        else
            Moment.moment(timeString, timeString.indexOf("at") > 0 ? "MMMM D" : "LL").toDate().getTime();
        // trace(Date.fromTime(time).toString());
        return time;
    }

    static var scroll = false;

    static function scrollToJune() {
        if (!scroll) {
            return;
        }

        final june = Date.fromString("2019-06-01");

        final links =
            [for (e in document.querySelectorAll('a[role=link] [aria-labelledby]')) (cast e:Element).closest('a[role=link]')];

        // trace(links);

        final times = [for (link in links) {
            final label =
                [for (labelled in link.querySelectorAll('[aria-labelledby]')) (cast labelled:Element)]
                    .map(labelled -> document.getElementById(labelled.getAttribute("aria-labelledby")).innerText)
                    .find(label -> switch (label) {
                        case "Learn More": false;
                        case label: true;
                    });
            if (label == null)
                continue;
            final time = timestampFromString(label);
            // trace(time);
            {
                node: link,
                time: time,
            };
        }];

        if (times.length == 0) {
            // Timer.delay(function() alert("讀不到時間資訊"), 100);
            trace("no time info is found");
            Timer.delay(scrollToJune, 100);
            return;
        }
        trace(Date.fromTime(times[times.length - 1].time));
        final beforeJuneNode = times.find(t -> t.time < june.getTime());
        if (beforeJuneNode != null) {
            beforeJuneNode.node.scrollIntoView({
                block: ScrollLogicalPosition.END,
            });
            Timer.delay(function() alert("到達2019年6月頭"), 100);
        } else {
            trace("scroll to bottom");
            window.scrollTo(window.scrollX, document.body.scrollHeight);
            Timer.delay(scrollToJune, 100);
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