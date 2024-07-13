package charleywong;

import haxe.*;
import react.*;
import react.ReactMacro.jsx;
import js.html.*;
import js.Browser.*;
import charleywong.browser.*;
import charleywong.StaticResourceMacros.R;
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
    }

    static function initSW() {
        if (navigator.serviceWorker != null) {
            navigator.serviceWorker.register(R("/serviceWorker.bundled.js"))
                .catchError(err -> {
                    console.error('Registration failed with ' + err);
                });
        }
    }

    static function main():Void {
        if (document.readyState == 'loading') {
            document.addEventListener('DOMContentLoaded', _ -> onReady());
        } else {
            onReady();
        }
        initSW();
    }
}