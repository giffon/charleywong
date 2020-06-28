package charleywong.browser;

import react.*;
import react.ReactMacro.jsx;
import js.npm.material_ui.MaterialUi;
import haxe.DynamicAccess;
using StringTools;

@:jsRequire("react-masonry-css", "default")
extern class Masonry extends ReactComponent {}

@:jsRequire("react-facebook", "FacebookProvider")
extern class FacebookProvider extends ReactComponent {}

@:jsRequire("react-facebook", "EmbeddedPost")
extern class EmbeddedPost extends ReactComponent {}

@:jsRequire("react-instagram-embed", "default")
extern class InstagramEmbed extends ReactComponent {}

class Mooncake2020 extends ReactComponent {
    var data(get, null):Array<Mooncake2020Data>;
    function get_data() return props.data;

    function renderType(mooncakeType:String, past:Bool) {
        var classes = ["mr-2", "text-nowrap"];
        if (past)
            classes.push("past");
        return jsx('
            <span key=${mooncakeType} className=${classes.join(" ")}><span className="mooncake-icon"></span> ${mooncakeType}</span>
        ');
    }

    function renderMooncake2020Data(d:Mooncake2020Data) {
        return jsx('
            <div key=${d.name} className="card">
                <div className="card-body">
                    <h5 className="card-title">${d.name}</h5>
                    <h6 className="card-subtitle mb-2 text-muted">${d.note}</h6>
                    <p className="card-text">
                        ${d.types.map(t -> renderType(t, false))}
                        ${d.past_types.map(t -> renderType(t, true))}
                    </p>
                    <div className="mb-2">
                        ${d.info.map(url -> renderInfo(url, false))}
                        ${d.past_info.map(url -> renderInfo(url, true))}
                    </div>
                    <a className="card-link badge badge-pill badge-light" href=${d.info.concat(d.past_info)[0]}>🔗 資料來源</a>
                    <a className="card-link badge badge-pill badge-light" href=${d.charleywong}>🐧🔎 店舖表態FC</a>
                </div>
            </div>
        ');
    }

    function renderInfo(url:String, past:Bool) {
        if (url.startsWith("https://www.facebook.com/")) {
            return jsx('
                <EmbeddedPost className="mooncake-info" href=${url} />
            ');
        } else if (url.startsWith("https://www.instagram.com/")) {
            return jsx('
                <InstagramEmbed className="mooncake-info" url=${url} />
            ');
        } else {
            return jsx('
                <div className="mooncake-info">
                    <a href=${url}>${url}</a>
                </div>
            ');
        }
    }

    override function render() {
        var fbMinWidth = 350; // https://developers.facebook.com/docs/plugins/embedded-posts/
        var pagePadding = 15; // bootstrap container-fiuld
        var cardPadding = 15; // static/css/mooncake2020.css .mooncake2020 .card-body
        var gutter = 10;      // static/css/mooncake2020.css
        var safe = 50;        // scrollbar track?
        var breakpoints:DynamicAccess<Int> = {};
        breakpoints["default"] = 4;
        for (numCols in [4, 3, 2]) {
            var minPageWidth = (fbMinWidth + cardPadding * 2) * numCols + pagePadding * 2 + gutter * (numCols - 1) + safe;
            breakpoints[Std.string(minPageWidth)] = numCols - 1;
        }
        return jsx('
            <FacebookProvider appId="628806881259482">
                <Masonry
                    breakpointCols=${breakpoints}
                    className="masonry-grid"
                    columnClassName="masonry-grid-column"
                >
                    ${data.map(renderMooncake2020Data)}
                </Masonry>
            </FacebookProvider>
        ');
    }
}