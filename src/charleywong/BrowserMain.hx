package charleywong;

import react.*;
import react.ReactMacro.jsx;
import js.html.DivElement;
import js.jquery.*;
import js.Browser.*;
import charleywong.browser.*;

class BrowserMain {
    static function onReady():Void {
        for (div in document.querySelectorAll("div.fb-like-button")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <FBLikeButton url=${div.dataset.url} />
            '), div);
        }

        for (div in document.querySelectorAll(".container-entity div.places")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Places places=${haxe.Json.parse(div.dataset.places)} />
            '), div);
        }

        for (div in document.querySelectorAll(".container-entity div.posts")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Posts posts=${haxe.Json.parse(div.dataset.posts)} />
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
                <Mooncake2020 data=${haxe.Json.parse(div.dataset.mooncake2020)} />
            '), div);
        }
    }

    static function main():Void {
        new JQuery(onReady);
    }
}