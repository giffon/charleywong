package charleywong.browser;

import react.*;
import react.ReactMacro.jsx;
import js.npm.react_facebook.ReactFacebook;

class FBLikeButton extends ReactComponent {
    var url(get, never):String;
    function get_url() return props.url;

    override function render() {
        return jsx('
            <FacebookProvider appId="628806881259482" version="v7.0">
                <Like
                    href=${url}
                    width=""
                    layout="button_count"
                    action="like"
                    size="small"
                    share="false"
                />
            </FacebookProvider>
        ');
    }
}