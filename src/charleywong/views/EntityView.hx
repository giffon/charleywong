package charleywong.views;

import js.html.URL;
import charleywong.Utils.prettyUrl;
import charleywong.UrlExtractors.*;

class EntityView extends View {
    override public function title() return '${entity.name.printAll()}';
    override public function description() return 'Charley Wong 和你查 ${entity.name.printAll()}.';
    override function canonical() return Path.join([ServerMain.domain, entity.id]);
    override public function render() {
        return super.render();
    }

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
            <div
                className="places"
                data-places=${haxe.Json.stringify(entity.places)}
            >
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
                            className="fb-like-button ml-1 mt-n1"
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
            case _:
                var linktext = if (p.name != null)
                    '${p.name} ${prettyUrl(p.url)}';
                else
                    prettyUrl(p.url);
                jsx('<a href=${p.url}>${linktext}</a>');
        }

        return jsx('
            <div key=${p.url} className="webpage d-flex justify-content-center align-items-center">
                ${item}
            </div>
        ');
    }

    function renderYBMap(p:Entity) {
        if (p.yellowBlueMapIds == null) {
            return null;
        }

        var ybmData = p.yellowBlueMapIds.map(id -> switch (YellowBlueMap.localCache[id]) {
            case null:
                trace('No data about $id');
                null;
            case data:
                data;
        }).filter(d -> d != null);

        if (ybmData.length == 0) {
            return null;
        }

        for (d in ybmData) {
            var detailId = 'ybm-detail-${d.id}';
            return jsx('
                <div className="webpage ybm-info" key=${d.id}>
                    <a href=${"#" + detailId} role="button" data-toggle="collapse" data-target=${"#" + detailId} aria-expanded="false" aria-controls=${detailId}>
                        <span className="badge badge-pill badge-light font-weight-normal text-primary">
                            <span className="ybm-logo-wrapper">
                                <img className="ybm-logo" src=${R("/images/ybm-logo.png")} />
                            </span>
                            終極黃藍地圖
                        </span>
                    </a>
                    <div id=${detailId} className="collapse">
                        <div className="ybm-details">
                            此店舖有被收錄於<a href="https://www.facebook.com/yellowbluemap" target="_blank">終極黃藍地圖</a>。
                        </div>
                    </div>
                </div>
            ');
        }

        return null;
    }

    override function bodyContent() {
        var jsonHref = '${entity.id}.json';
        var picUrl = '/${entity.id}/profile.png';
        var logoHeaderStyle = {
            backgroundImage: 'url(${R("/images/charley-600-w.png")})',
        };
        var closed = if (entity.tags.has("closed")) {
            jsx('
                <span className="badge badge-pill badge-dark font-weight-normal">已結業</span>
            ');
        } else {
            null;
        }
        return jsx('
            <Fragment>
                <div className="container">
                    <header className="p-3 p-md-4">
                        <a href="/" className="logo-header" style=${logoHeaderStyle}></a>
                    </header>
                    <div className="container-entity position-relative mx-auto rounded-10 bg-white container-btm">
                        <div className="mb-3 text-center">
                            <div
                                className="share-button"
                                data-title=${title()}
                                data-url=${canonical()}
                            />
                            <img
                                className="profile-pic mb-2"
                                src=${picUrl}
                                loading="lazy"
                                decoding="async"
                                width=${ServerMain.entityProfilePicSize}
                                height=${ServerMain.entityProfilePicSize}
                                alt=${entity.name.printAll()}
                            />
                            <h3>${entity.name.printAll()}</h3>
                            <div className="text-center mb-3">${closed}</div>
                            <a className="btn btn-light" href=${jsonHref}>查看 JSON 格式 📃</a>
                            <div className="text-center mb-3">
                                ${renderPlaces()}
                            </div>
                        </div>
                        <div className="text-center mb-3">
                            ${entity.webpages.filter(p -> p.hidden != true).map(renderWebpage)}
                            ${renderYBMap(entity)}
                        </div>
                        <div className="posts" data-posts=${Json.stringify(entity.posts)} />
                    </div>
                </div>
            </Fragment>
        ');
    }
}