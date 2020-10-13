package charleywong;

import haxe.*;
import react.*;
import react.ReactMacro.jsx;
import js.html.*;
import js.jquery.*;
import js.Browser.*;
import global.GtagJsGlobal.*;
import charleywong.browser.*;
using StringTools;

class BrowserMain {
    static function onReady():Void {
        for (div in document.querySelectorAll("div.search-bar")) {
            var div:DivElement = cast div;
            ReactDOM.hydrate(jsx('
                <SearchBar
                    defaultQuery=${div.dataset.defaultQuery}
                    autoFocus=${Json.parse(div.dataset.autoFocus)}
                />
            '), div);
        }

        for (div in document.querySelectorAll("div.fb-like-button")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <FBLikeButton url=${div.dataset.url} />
            '), div);
        }

        for (div in document.querySelectorAll(".container-entity div.places")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Places places=${Json.parse(div.dataset.places)} />
            '), div);
        }

        for (div in document.querySelectorAll(".container-entity div.posts")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Posts posts=${Json.parse(div.dataset.posts)} />
            '), div);
        }

        for (div in document.querySelectorAll("div.share-button")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <ShareButton
                    title=${div.dataset.title}
                    text=${div.dataset.text}
                    url=${div.dataset.url}
                />
            '), div);
        }

        if (document.body.classList.contains("page-mooncake2020")) {
            var div:DivElement = cast document.querySelector("div.mooncake2020");
            ReactDOM.render(jsx('
                <Mooncake2020 data=${Json.parse(div.dataset.mooncake2020)} />
            '), div);
        }

        document.body.addEventListener("click", gtagOnClick);
    }

    static function gtagOnClick(evt:MouseEvent) {
        var href = try {
            cast(cast(evt.target, Element).closest("a"), AnchorElement).href;
        } catch (err) return true;

        if (href.startsWith(document.location.origin))
            return true;

        gtag("event", "click", {
            event_category: "outbound",
            event_label: href,
            transport_type: "beacon",
            event_callback: function(){
                document.location.assign(href);
            },
        });
        return false;
    }

    static function main():Void {
        new JQuery(onReady);
    }
}