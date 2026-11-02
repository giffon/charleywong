package charleywong.browser;

import haxe.Json;
import js.html.IFrameElement;
import js.html.MessageEvent;
import js.Browser.*;
import react.*;
import react.ReactComponent;
import react.ReactMacro.jsx;

typedef TelegramEmbedProps = {
    final src:String;
}

typedef TelegramEmbedState = {
    final height:String;
}

/**
    Embeds a Telegram post (https://t.me/<channel>/<id>) in an iframe.
    The embed page reports its height by postMessage, and only does so after being told it is visible.
**/
class TelegramEmbed extends ReactComponentOf<TelegramEmbedProps, TelegramEmbedState> {
    var iframe:IFrameElement;

    function new(props) {
        super(props);
        state = {
            height: "80px",
        };
    }

    function frameId():String {
        return "telegram-post" + ~/[^a-z0-9_]/ig.replace(new js.html.URL(props.src).pathname, "-");
    }

    function onMessage(evt:MessageEvent):Void {
        if (iframe == null || evt.source != iframe.contentWindow || !(evt.data is String))
            return;
        final action:Dynamic = try Json.parse(evt.data) catch (_) null;
        if (action != null && action.event == "resize" && action.height != null) {
            setState({
                height: action.height + "px",
            });
        }
    }

    function onLoad():Void {
        iframe.contentWindow.postMessage(Json.stringify({event: "visible", frame: frameId()}), "*");
    }

    override function componentDidMount() {
        window.addEventListener("message", onMessage);
    }

    override function componentWillUnmount() {
        window.removeEventListener("message", onMessage);
    }

    override function render() {
        final style:css.Properties = {
            width: "100%",
            border: "none",
            overflow: Hidden,
        };
        return jsx('
            <div>
                <iframe
                    ref=${node -> iframe = node}
                    src=${props.src + "?embed=1"}
                    id=${frameId()}
                    height=${state.height}
                    scrolling="no"
                    style=${style}
                    onLoad=${onLoad}
                />
            </div>
        ');
    }
}
