package charleywong.views;

import js.html.URL;
import charleywong.YellowBlueMap;
import charleywong.Utils.prettyUrl;
import charleywong.UrlExtractors.*;

class EntityView extends View {
    override public function title() return '${entity.name.printAll()}';
    override public function description() return 'Charley Wong 和你查 ${entity.name.printAll()}.';
    override function canonical() return Path.join([ServerMain.domain, entity.id]);
    override public function render() {
        return super.render();
    }

    override function ogMeta() return jsx('
        <Fragment>
            <meta name="twitter:card" content="summary_large_image" />
            ${super.ogMeta()}
            <meta property="og:type" content="website" />
            <meta property="og:image" content=${Path.join([ServerMain.domain, picUrl()])} />
            <meta property="og:image:width" content=${ServerMain.entityProfilePicWidth} />
            <meta property="og:image:height" content=${ServerMain.entityProfilePicHeight} />
        </Fragment>
    ');

    public var entity(get, never):Entity;
    function get_entity() return props.entity;

    override function footJs() {
        return jsx('
            <Fragment>
                ${super.footJs()}
                <script async=${true} src="https://platform.twitter.com/widgets.js" charSet="utf-8"></script>
            </Fragment>
        ');
    }

    function renderPlaces() {
        if (entity.places == null || entity.places.length == 0) {
            return null;
        }

        return jsx('
            <div className="text-center">
                <div
                    className="places"
                    data-places=${haxe.Json.stringify(entity.places)}
                >
                </div>
            </div>
        ');
    }

    function renderWebpage(p:charleywong.Entity.WebPage) {
        var item = switch (new URL(p.url)) {
            case extractFbHomePage(_) => fb if (fb != null):
                var linktext = if (p.meta != null) switch (p.meta["name"]) {
                    case null: fb;
                    case name: name;
                } else {
                    fb;
                }
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-facebook"></i> ${linktext}</a>
                        <div
                            className="fb-like-button flex-shrink-0 ml-1"
                            data-url=${p.url}
                        />
                    </Fragment>
                ');
            case extractIgProfilePage(_) => ig if (ig != null):
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-instagram"></i> ${ig}</a>
                    </Fragment>
                ');
            case extractYouTubeProfile(_) => Id(yt) | Handle(yt):
                var linktext = if (p.meta != null && p.meta["name"] != null)
                    p.meta["name"];
                else
                    yt;
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-youtube"></i> ${linktext}</a>
                    </Fragment>
                ');
            case extractTwitterProfile(_) => t if (t != null):
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-twitter"></i> ${t}</a>
                    </Fragment>
                ');
            case extractTwitchProfile(_) => t if (t != null):
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-twitch"></i> ${t}</a>
                    </Fragment>
                ');
            case extractTelegramProfile(_) => t if (t != null):
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-telegram"></i> ${t}</a>
                    </Fragment>
                ');
            case extractPatreonProfile(_) => { handle: handle }:
                if (handle != null)
                    jsx('
                        <Fragment>
                            <a href=${p.url}><i className="fab fa-patreon"></i> ${handle}</a>
                        </Fragment>
                    ');
                else
                    jsx('
                        <Fragment>
                            <a href=${p.url}><i className="fab fa-patreon"></i> Patreon</a>
                        </Fragment>
                    ');
            case extractMediumProfile(_) => u if (u != null):
                jsx('
                    <Fragment>
                        <a href=${p.url}><i className="fab fa-medium"></i> ${u}</a>
                    </Fragment>
                ');
            case {
                origin: "https://www.mchk.org.hk",
                pathname: "/tc_chi/list_register/doctor_detail.php",
            }:
                jsx('<a href=${p.url}>醫生註冊記錄</a>');
            case _:
                var linktext = if (p.name != null)
                    '${p.name} ${prettyUrl(p.url)}';
                else
                    prettyUrl(p.url);
                jsx('<a href=${p.url}>${linktext}</a>');
        }

        return jsx('
            <div key=${p.url} className="webpage flex justify-center">
                ${item}
            </div>
        ');
    }

    function renderYBMap(p:Entity) {
        if (p.yellowBlueMapIds == null) {
            return null;
        }

        var ybmData = p.yellowBlueMapIds
            .map(function(ybmId):YBMapData return switch (ybmId.type) {
                case eat:
                    YellowBlueMap.eats.find(d -> d.id == ybmId.id);
                case shop:
                    YellowBlueMap.shops.find(d -> d.id == ybmId.id);
            })
            .filter(d -> d != null)
            .filter(d -> d.status != removed);

        if (ybmData.length == 0) {
            return null;
        }

        var colors = [
            for (d in ybmData)
            d.color => d.color
        ].map(color -> switch color {
            case yellow:
                jsx('<span key=${color} className=${'rounded rounded-full py-0.5 px-1 ybm-${color}'}>黃</span>');
            case blue:
                jsx('<span key=${color} className=${'rounded rounded-full py-0.5 px-1 ybm-${color}'}>藍</span>');
            case green:
                jsx('<span key=${color} className=${'rounded rounded-full py-0.5 px-1 ybm-${color}'}>綠</span>');
        });

        return jsx('
            <div className="webpage ybm-info">
                <span className="inline-block text-center text-sm align-baseline leading-none rounded rounded-full py-1.5 px-3 bg-gray-100 text-gray-800 font-normal">
                    <span className="webpage-logo-wrapper mr-1">
                        <img className="webpage-logo h-auto" src=${R("/images/ybm-logo.png")} alt="終極黃藍地圖" />
                    </span>
                    終極黃藍地圖 ${colors}
                </span>
            </div>
        ');
    }

    function renderHkbaseDirectory(e:Entity) {
        var data = HkbaseDirectory.getData(e);
        if (data == null) {
            return null;
        }

        var detailId = 'hkbase-detail';
        return jsx('
            <div className="webpage hkbase-info">
                <span className="inline-block text-center text-sm align-baseline leading-none rounded rounded-full py-1.5 px-3 bg-gray-100 text-gray-800 font-normal">
                    <span className="webpage-logo-wrapper mr-1">
                        <img className="webpage-logo h-auto rounded-full" src=${R("/images/hkbase-logo.png")} alt="HKBASE" />
                    </span>
                    HKBASE企業名冊
                </span>
                <div>
                    <p><a href="/page/hkbase-directory">HKBASE</a>推介: ${data.description}</p>
                </div>
            </div>
        ');
    }

    function picUrl() return '/${entity.id}/profile.png';

    function renderName() {
        return entity.name.mapAll((lang, val) -> {
            jsx('
                <span key=${lang} lang=${lang} className="mx-1">${val}</span>
            ');
        });
    }

    override function bodyContent() {
        var jsonHref = '${entity.id}.json';
        var picUrl = '/${entity.id}/profile.png';
        var profilePicStyle = {
            backgroundImage: 'url("${picUrl}")',
        };
        var logoHeaderStyle = {
            backgroundImage: 'url("${R("/images/charley-600-w.png")}")',
        };
        var closed = if (entity.tags.has("closed")) {
            jsx('
                <div className="text-center mb-3">
                    <span className="inline-block p-1 text-center font-semibold text-sm align-baseline leading-none rounded rounded-full py-1 px-3 bg-gray-900 text-white font-normal">已結業</span>
                </div>
            ');
        } else {
            null;
        }
        return jsx('
            <Fragment>
                <div className="container mx-auto sm:px-4">
                    <header className="p-6 md:p-6 flex place-items-center">
                        <a href="/" className="logo-header" style=${logoHeaderStyle}></a>
                    </header>
                    <div className="container-entity relative mx-auto rounded-10 bg-white container-btm py-5 sm:px-2">
                        <div className="text-center">
                            <div
                                className="share-button"
                                data-title=${title()}
                                data-url=${canonical()}
                            />
                            <div className="profile-pic-wrapper">
                                <div
                                    className="profile-pic"
                                    style=${profilePicStyle}
                                />
                            </div>
                            <h3 className="flex flex-wrap justify-center text-2xl py-2">${renderName()}</h3>
                            ${closed}
                            ${renderPlaces()}
                        </div>
                        <div className="text-center mb-3">
                            ${entity.webpages.filter(p -> p.hidden != true).map(renderWebpage)}
                            ${renderYBMap(entity)}
                            ${renderHkbaseDirectory(entity)}
                        </div>
                        <div className="posts" data-posts=${Json.stringify(entity.posts)} />
                    </div>
                </div>
            </Fragment>
        ');
    }
}