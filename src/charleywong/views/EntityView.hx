package charleywong.views;

import js.node.Querystring;
import js.html.URL;
import js.npm.linkifyjs.react.Linkify;
import charleywong.Utils.prettyUrl;
import charleywong.UrlExtractors.*;

class EntityView extends View {
    override public function title() return '${entity.name.printAll()}';
    override public function description() return 'Charley Wong 和你查 ${entity.name.printAll()}.';
    override public function render() {
        return super.render();
    }

    public var entity(get, never):Entity;
    function get_entity() return props.entity;

    override function footJs() {
        return jsx('
            <Fragment>
                ${super.footJs()}
                <script async=${true} defer=${true} crossOrigin="anonymous" src="https://connect.facebook.net/zh_HK/sdk.js#xfbml=1&version=v7.0&appId=628806881259482&autoLogAppEvents=1"></script>
            </Fragment>
        ');
    }

    function isFbPostEmbeddable(post:Post):Bool {
        if (post.meta == null)
            return true;

        return switch (post.meta["embeddable"]:Null<Bool>) {
            case null:
                switch (post.meta["sharedWith"]:Null<String>) {
                    case null:
                        true;
                    case "Public" | "public":
                        true;
                    case _:
                        false;
                }
            case true:
                true;
            case false:
                false;
        };
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
                            className="fb-like ml-1 align-text-bottom"
                            data-href=${p.url}
                            data-width=""
                            data-layout="button_count"
                            data-action="like"
                            data-size="small"
                            data-share="false">
                        </div>
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
            <div key=${p.url} className="webpage">
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
            var detail = d.reason + "\n" + "Source:\n" + d.source;
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
                        <blockquote>
                            <div className="detail">
                                <Linkify>
                                    ${detail}
                                </Linkify>
                            </div>
                            <footer className="blockquote-footer">以上資料由<a href="https://www.facebook.com/yellowbluemap" target="_blank">終極黃藍地圖</a>提供</footer>
                        </blockquote>
                    </div>
                </div>
            ');
        }

        return null;
    }

    static function ogProp(og:Array<{property:String, content:String}>, prop:String) {
        if (og == null)
            return null;

        return switch(og.find(p -> p.property == prop)) {
            case null: null;
            case p: p.content;
        }
    }

    function renderPost(p:charleywong.Entity.Post) {
        var summary = if (p.summary != null) {
            var nodes = [];
            if (p.summary[zh] != null)
                nodes.push(jsx('<p key="zh">${p.summary[zh]}</p>'));
            if (p.summary[en] != null)
                nodes.push(jsx('<p key="en">${p.summary[en]}</p>'));
            nodes;
        } else
            null;

        var item = if (
            (
                ~/^https:\/\/www\.facebook\.com\/[^\/]+\/(?:posts|photos|videos)\/.+$/.match(p.url) ||
                ~/^https:\/\/www\.facebook.com\/photo\//.match(p.url) ||
                ~/^https:\/\/www\.facebook.com\/permalink\.php\?story_fbid=[0-9]+&id=[0-9]+/.match(p.url)
            )
            && isFbPostEmbeddable(p)
        ) {
            jsx('
                <div
                    className="fb-post"
                    data-href=${p.url}
                    data-show-text="true"
                />
            ');
        } else if (
            p.url.startsWith("https://www.instagram.com/p/")
        ) {
            jsx('
                <blockquote className="instagram-media"
                    data-instgrm-permalink=${p.url}
                    data-instgrm-version="12"
                    data-instgrm-captioned=${true}
                >
                    <div className="post-link">
                        <a href=${p.url}>${prettyUrl(p.url)}</a>
                        ${summary}
                    </div>
                </blockquote>
            ');
        } else if (
            p.url.startsWith("https://www.youtube.com/watch?v=")
        ) {
            var url = new URL(p.url);
            var vid = url.searchParams.get("v");
            jsx('
                <div className="youtube-container">
                    <iframe src=${'https://www.youtube.com/embed/$vid'} frameBorder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowFullScreen=${true}></iframe>
                </div>
            ');
        } else if (
            p.url.startsWith("https://t.me/")
        ) {
            var post = p.url.substr("https://t.me/".length);
            jsx('
                <script async=${true} src="https://telegram.org/js/telegram-widget.js?8" data-telegram-post=${post} data-width="100%"></script>
            ');
        } else if (
            p.url.startsWith("https://twitter.com/")
        ) {
            jsx('
                <blockquote className="twitter-tweet"><a href=${p.url}>${prettyUrl(p.url)}</a></blockquote>
            ');
        } else {
            if (p.meta != null && p.meta["og"] != null) {
                var og = p.meta["og"];
                var title = ogProp(og, "og:title");
                var image = '/proxy/image?' + Querystring.encode({
                    post: p.url,
                });
                var siteName = ogProp(og, "og:site_name");
                var published_time = ogProp(og, "article:published_time");

                if (published_time == null)
                    published_time = switch (p.meta["ld"]) {
                        case null: null;
                        case ld:
                            ld.datePublished;
                    }

                if (published_time != null)
                    published_time = published_time.substr(0,10);

                jsx('
                    <a className="post-preview" href=${p.url}>
                        <div className="card text-left">
                            <img className="card-img-top" src=${image} alt=${title} />
                            <div className="card-body">
                                <h6 className="card-subtitle text-muted mb-2">${siteName}<span className="ml-2">${published_time}</span></h6>
                                <h5 className="card-title mb-0">${title}</h5>
                            </div>
                        </div>
                    </a>
                ');
            } else {
                jsx('
                    <div className="post-link">
                        <a href=${p.url}>${prettyUrl(p.url)}</a>
                        ${summary}
                    </div>
                ');
            }
        }

        return jsx('
            <div key=${p.url} className="post my-1 text-center">
                ${item}
            </div>
        ');
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
                    <div className="">
                        <div className="container-entity position-relative mx-auto rounded-10 bg-white container-btm">
                            <div className="mb-3 text-center">
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
                            <div className="posts">
                                ${if (entity.posts.length > 0) entity.posts.map(renderPost) else null}
                                ${if (entity.posts.length == 0) "冇表態資料。有可能係先前嘅表態已被移除或者私隱設定有變。" else null}
                            </div>
                        </div>
                    </div>
                    
                </div>
            </Fragment>
        ');
    }
}