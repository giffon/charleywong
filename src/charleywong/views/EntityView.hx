package charleywong.views;

import js.html.URL;
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
                ~/^https:\/\/www\.facebook.com\/permalink\.php\?story_fbid=[0-9]+&id=[0-9]+/.match(p.url)
            )
            && isFbPostEmbeddable(p)
        ) {
            jsx('
                <div
                    className="fb-post"
                    data-href=${p.url}
                    data-show-text="true"
                >
                    <blockquote cite=${p.url} className="fb-xfbml-parse-ignore">
                        <a href=${p.url}>${prettyUrl(p.url)}</a>
                        ${summary}
                    </blockquote>
                </div>
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
                    <a href=${p.url}>${prettyUrl(p.url)}</a>
                    ${summary}
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
        } else {
            jsx('
                <div className="post-link">
                    <a href=${p.url}>${prettyUrl(p.url)}</a>
                    ${summary}
                </div>
            ');
        }

        return jsx('
            <div key=${p.url} className="my-1">
                ${item}
            </div>
        ');
    }

    override function bodyContent() {
        var jsonHref = '${entity.id}.json';
        var picUrl = '/${entity.id}/profile.png';
        var logoHeaderStyle = {
            backgroundImage: 'url(${R("/images/logo-c-t.png")})',
        };
        return jsx('
            <Fragment>
                <div className="container">
                    <header className="p-3 p-md-4">
                        <a href="/" className="logo-header" style=${logoHeaderStyle}></a>
                    </header>
                    <div className="">
                        <div className="container-entity position-relative mx-auto px-3 py-4 rounded-10 bg-white container-btm">
                            <div className="mb-3 text-center">
                                <img className="profile-pic mb-2" src=${picUrl} alt=${entity.name.printAll()} />
                                <h3>${entity.name.printAll()}</h3>
                                <a className="btn btn-light" href=${jsonHref}>查看 JSON 格式 📃</a>
                            </div>
                            <div className="text-center mb-3">
                                ${entity.webpages.map(renderWebpage)}
                            </div>
                            <div>
                                ${entity.posts.map(renderPost)}
                            </div>
                        </div>
                    </div>
                    <div className="row justify-content-center">

                        <div className="col-12 col-md-6 col-lg-4">
                            <div>
                                <img className="w-100 px-3 px-md-5 py-3" src=${R("/images/circle.png")} alt="yellow economic circle"/>
                            </div>
                            <div className="text-center px-3 px-lg-5 pb-5 py-md-0 color_black_o60">
                                <div className="container-yc"><span className="yc">黃</span><span className="yc">色</span><span className="yc">經</span><span className="yc">濟</span><span className="yc">圈</span></div>
                                <p className="p-3">Charley Wong 和你查 搜集多個商店、創作人、專頁，以第一身表態支持 #香港人 #反送中，爭取 #自由 #民主 的良心發言。當中有高調行動，有低調暗示，我地不作篩選，各位自行以個人喜好辨別。</p>
                            </div>
                        </div>

                        <div className="col-12 col-md-6 col-lg-4">
                            <div>
                                <img className="w-100 px-3 px-md-5 py-3" src=${R("/images/open.png")} alt="open source"/>
                            </div>
                            <div className="text-center px-3 px-lg-5 pb-5 py-md-0 color_black_o60">
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">數</span><span className="yc">據</span></div>
                                <div><span className="yc">開</span><span className="yc">放</span><span className="yc">原</span><span className="yc">碼</span></div>
                                <p className="p-3">Charley Wong 和你查 以高度透明同公開嘅方式運作，而且鼓勵同路人使用我地嘅成果：我地以 <a href="https://github.com/giffon/charleywong/blob/master/LICENSE">open license</a> 發佈所有<a href="https://github.com/giffon/charleywong">數據同原碼</a>。任何人只要註明出處，都可以隨意使用。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </Fragment>
        ');
    }
}