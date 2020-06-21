package charleywong;

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
    }

    static function main():Void {
        new JQuery(onReady);
    }
}