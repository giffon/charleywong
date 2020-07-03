package charleywong.browser;

import haxe.Timer;
import js.lib.Promise;
import react.*;
import react.ReactMacro.jsx;
import js.npm.material_ui.MaterialUi;
import js.Browser.*;
import js.Lib.require;

class ShareButton extends ReactComponent {
    var title(get, never):String;
    function get_title() return props.title;

    var url(get, never):String;
    function get_url() return props.url;

    var openMessage(get, set):Bool;
    function get_openMessage() return state.openMessage;
    function set_openMessage(v) {
        setState({
            openMessage: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            openMessage: false,
        };
    }

    static final copy:(text:String, ?opts:Dynamic)->Bool = require("copy-to-clipboard");

    function onClickShare():Void {
        (untyped navigator.share)({
            title: title,
            url: url,
        });
    }

    function onClickCopy():Void {
        copy(url, {
            format: "text/plain",
            onCopy: function () {
                openMessage = true;
                Timer.delay(() -> openMessage = false, 4000);
            },
        });
    }

    override function render() {
        if (untyped navigator.share) {
            return jsx('
                <IconButton onClick=${onClickShare}>
                    <i className="fas fa-share-alt"></i>
                </IconButton>
            ');
        } else {
            return jsx('
                <Tooltip
                    title="成功複製網址"
                    arrow=${true}
                    open=${openMessage}
                    disableFocusListener=${true}
                    disableHoverListener=${true}
                    disableTouchListener=${true}
                >
                    <IconButton onClick=${onClickCopy}>
                        <i className="fas fa-link"></i>
                    </IconButton>
                </Tooltip>
            ');
        }
    }
}