package charleywong;

import charleywong.browser.Mooncake2020;
import react.*;
import react.ReactMacro.jsx;
import js.html.DivElement;
import js.jquery.*;
import js.Browser.*;
import charleywong.browser.Places;

class BrowserMain {
    static function onReady():Void {
        for (div in document.querySelectorAll("div.places")) {
            var div:DivElement = cast div;
            ReactDOM.render(jsx('
                <Places places=${haxe.Json.parse(div.dataset.places)} />
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