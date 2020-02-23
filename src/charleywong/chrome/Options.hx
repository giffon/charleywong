package charleywong.chrome;

import js.Browser.*;
import js.Node.*;
import react.*;
import react.Fragment;
import react.ReactMacro.jsx;
import chrome.*;
import charleywong.chrome.Settings.*;

class Options {
    static function main():Void {
        getSettings().then(function(settings) {
            ReactDOM.render(jsx('
                <OptionsControl defaultSettings=${settings} />
            '), document.getElementById("options"));
        });
    }
}