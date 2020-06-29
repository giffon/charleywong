package charleywong.browser;

import js.html.ScrollLogicalPosition;
import react.*;
import react.ReactMacro.jsx;
import js.npm.material_ui.MaterialUi;
import js.Browser.*;
import haxe.DynamicAccess;
using StringTools;
using Lambda;

@:jsRequire("react-masonry-css", "default")
extern class Masonry extends ReactComponent {}

@:jsRequire("react-facebook", "FacebookProvider")
extern class FacebookProvider extends ReactComponent {}

@:jsRequire("react-facebook", "EmbeddedPost")
extern class EmbeddedPost extends ReactComponent {}

@:jsRequire("react-instagram-embed", "default")
extern class InstagramEmbed extends ReactComponent {}

enum abstract MooncakeType(String) {
    var AnyMooncake = "任何款式";
    var LotusSeedPasteWithYolks = "蛋黃蓮蓉";
    var EggCustard = "奶黃";
    var SnowSkin = "冰皮";
    var Nuts = "五仁/花生榛子";
    var PurpleYam = "紫薯";
    var Taro = "芋頭";
    var Matcha = "抹茶";
    var RedBeans = "紅豆";
    var Mocha = "朱古力咖啡";
    var Vegan = "純素";
}

enum abstract OfferType(String) {
    var Manufactured = "製成品";
    var Workshop = "工作坊";
    var MaterialAndTools = "材料工具";
}

class Mooncake2020 extends ReactComponent {
    var data(get, null):Array<Mooncake2020Data>;
    function get_data() return props.data;

    var mooncakeType(get, set):MooncakeType;
    function get_mooncakeType() return state.mooncakeType;
    function set_mooncakeType(v) {
        setState({
            mooncakeType: v,
        });
        return v;
    }

    var offerType(get, set):OfferType;
    function get_offerType() return state.offerType;
    function set_offerType(v) {
        setState({
            offerType: v,
        });
        return v;
    }

    static function isMooncakeType(type:MooncakeType, mooncakeName:String):Bool {
        return switch (type) {
            case AnyMooncake:
                true;
            case LotusSeedPasteWithYolks:
                mooncakeName.contains("蓮蓉");
            case EggCustard:
                mooncakeName.contains("奶黃") || mooncakeName.contains("奶皇");
            case SnowSkin:
                mooncakeName.contains("冰皮") || mooncakeName.contains("凍");
            case Nuts:
                mooncakeName.contains("五仁") || mooncakeName.contains("花生") || mooncakeName.contains("榛子");
            case PurpleYam:
                mooncakeName.contains("紫薯");
            case Taro:
                mooncakeName.contains("芋");
            case Matcha:
                mooncakeName.contains("抹茶");
            case RedBeans:
                mooncakeName.contains("紅豆") || mooncakeName.contains("豆沙");
            case Mocha:
                mooncakeName.contains("朱古力咖啡");
            case Vegan:
                mooncakeName.contains("純素");
        }
    }

    function new(props) {
        super(props);
        state = {
            mooncakeType: AnyMooncake,
            offerType: Manufactured,
        };
    }

    function renderMooncakeName(mooncakeName:String) {
        var classes = ["mooncake-name", "mr-2", "text-nowrap"];
        if (mooncakeType != AnyMooncake && isMooncakeType(mooncakeType, mooncakeName)) {
            classes.push("selected-mooncake-type");
        }
        return jsx('
            <span key=${mooncakeName} className=${classes.join(" ")}><span className="mooncake-icon"></span> ${mooncakeName}</span>
        ');
    }

    function renderMooncake2020Data(d:Mooncake2020Data) {
        return jsx('
            <div key=${d.name} className="card">
                <div className="card-body">
                    <h5 className="card-title">${d.name}</h5>
                    <h6 className="card-subtitle mb-2 text-muted">${d.note}</h6>
                    <p className="card-text">
                        ${d.types.map(renderMooncakeName)}
                    </p>
                    <div className="mooncake-info mb-2">
                        ${d.info.map(renderInfo)}
                    </div>
                    <a className="card-link badge badge-pill badge-light" target="_blank" href=${d.info[0]}>🔗 資料來源</a>
                    <a className="card-link badge badge-pill badge-light" target="_blank" href=${d.charleywong}>🐧🔎 店舖表態FC</a>
                </div>
            </div>
        ');
    }

    function renderInfo(url:String) {
        if (url.startsWith("https://www.facebook.com/")) {
            return jsx('
                <EmbeddedPost key=${url} href=${url} />
            ');
        } else if (url.startsWith("https://www.instagram.com/")) {
            return jsx('
                <InstagramEmbed key=${url} url=${url} />
            ');
        } else {
            return jsx('
                <div key=${url}>
                    <a target="_blank" href=${url}>${url}</a>
                </div>
            ');
        }
    }

    function onFilterChange() {
        document.querySelector("div.mooncake2020").scrollIntoView({
            block: ScrollLogicalPosition.START,
        });
    }

    function onOfferChange(evt) {
        switch (offerType = evt.target.value) {
            case Manufactured:
            case Workshop | MaterialAndTools:
                mooncakeType = AnyMooncake;
        }
        onFilterChange();
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

        function ElevationScroll(props) {
            var trigger = UseScrollTrigger.useScrollTrigger({
                disableHysteresis: true,
                threshold: 0,
            });

            return React.cloneElement(props.children, {
                elevation: trigger ? 4 : 0,
            });
        }

        var filteredData = data
            .filter(d ->
                switch (d.types) {
                    case []:
                        true;
                    case types:
                        types.exists(t -> isMooncakeType(mooncakeType, t));
                }
            )
            .filter(d ->
                switch (offerType) {
                    case Manufactured:
                        !d.note.contains("工作坊") && !d.note.contains("材料工具");
                    case Workshop:
                        d.note.contains("工作坊");
                    case MaterialAndTools:
                        d.note.contains("材料工具");
                }
            )
            .map(renderMooncake2020Data);

        var mooncakeTypeControl = switch (offerType) {
            case Workshop | MaterialAndTools:
                null;
            case Manufactured:
                jsx('
                    <FormControl>
                        <InputLabel id="mooncake-type-label">月餅款式</InputLabel>
                        <Select
                            labelId="mooncake-type-label"
                            id="mooncake-type-select"
                            value=${mooncakeType}
                            onChange=${evt -> { mooncakeType = evt.target.value; onFilterChange(); }}
                            disableUnderline=${true}
                            autoWidth=${true}
                        >
                            <MenuItem value=${AnyMooncake}>
                                ${AnyMooncake}
                            </MenuItem>
                            <MenuItem value=${LotusSeedPasteWithYolks}>
                                ${LotusSeedPasteWithYolks}
                            </MenuItem>
                            <MenuItem value=${EggCustard}>
                                ${EggCustard}
                            </MenuItem>
                            <MenuItem value=${SnowSkin}>
                                ${SnowSkin}
                            </MenuItem>
                            <MenuItem value=${Nuts}>
                                ${Nuts}
                            </MenuItem>
                            <MenuItem value=${PurpleYam}>
                                ${PurpleYam}
                            </MenuItem>
                            <MenuItem value=${Taro}>
                                ${Taro}
                            </MenuItem>
                            <MenuItem value=${Matcha}>
                                ${Matcha}
                            </MenuItem>
                            <MenuItem value=${RedBeans}>
                                ${RedBeans}
                            </MenuItem>
                            <MenuItem value=${Mocha}>
                                ${Mocha}
                            </MenuItem>
                            <MenuItem value=${Vegan}>
                                ${Vegan}
                            </MenuItem>
                        </Select>
                    </FormControl>
                ');
        }

        return jsx('
            <div>
                <ElevationScroll>
                    <AppBar position="sticky" className="mb-2 bg-light text-body">
                        <Toolbar>
                            <i className="fas fa-filter mr-2"></i>
                            <FormControl>
                                <InputLabel id="offer-type-label">供應</InputLabel>
                                <Select
                                    labelId="offer-type-label"
                                    id="offer-type-select"
                                    value=${offerType}
                                    onChange=${onOfferChange}
                                    disableUnderline=${true}
                                    autoWidth=${true}
                                >
                                    <MenuItem value=${Manufactured}>
                                        ${Manufactured}
                                    </MenuItem>
                                    <MenuItem value=${Workshop}>
                                        ${Workshop}
                                    </MenuItem>
                                    <MenuItem value=${MaterialAndTools}>
                                        ${MaterialAndTools}
                                    </MenuItem>
                                </Select>
                            </FormControl>
                            ${mooncakeTypeControl}
                        </Toolbar>
                    </AppBar>
                </ElevationScroll>
                <div className="py-2">
                    <Typography noWrap=${true}>
                        ${filteredData.length} 項資料
                    </Typography>
                </div>
                <FacebookProvider appId="628806881259482" version="v7.0">
                    <Masonry
                        breakpointCols=${breakpoints}
                        className="masonry-grid"
                        columnClassName="masonry-grid-column"
                    >
                        ${filteredData}
                    </Masonry>
                </FacebookProvider>
            </div>
        ');
    }
}