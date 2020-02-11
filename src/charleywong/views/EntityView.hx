package charleywong.views;

import charleywong.Utils.prettyUrl;

class EntityView extends View {
    override public function title() return '${renderName(entity.name)}';
    override public function description() return 'Charley Wong 和你查 ${renderName(entity.name)}.';
    override public function render() {
        return super.render();
    }

    public var entity(get, never):Entity;
    function get_entity() return props.entity;

    function renderName(n:MultiLangString) {
        return switch [n[zh], n[en]] {
            case [ null, null ]: throw 'No name available';
            case [ z, null ]: z;
            case [ null, e ]: e;
            case [ z, e ]: '${e} ${z}';
        }
    }

    function isFbPostEmbeddable(post:Post):Bool {
        if (post.meta == null)
            return true;

        return switch (post.meta["embeddable"]:Null<Bool>) {
            case null | true:
                true;
            case false:
                false;
        };
    }

    function renderWebpage(p:charleywong.Entity.WebPage) {
        var linktext = if (p.name != null)
            '${p.name} ${prettyUrl(p.url)}';
        else
            prettyUrl(p.url);

        var item = if (p.url.startsWith("https://www.facebook.com/")) {
            jsx('
                <Fragment>
                    <a href=${p.url}>${linktext}</a>
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
        } else {
            jsx('<a href=${p.url}>${linktext}</a>');
        }

        return jsx('
            <div key=${p.url} className="webpage">
                ${item}
            </div>
        ');
    }

    function renderPost(p:charleywong.Entity.Post) {
        var summary = if (p.summary != null)
            jsx('<p>${p.summary}</p>');
        else
            null;

        var item = if (
            (
                ~/^https:\/\/www\.facebook\.com\/[^\/]+\/(?:posts|photos|videos)\/.+$/.match(p.url) ||
                ~/https:\/\/www\.facebook.com\/permalink\.php\?story_fbid=[0-9]+&id=[0-9]+/.match(p.url)
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
                >
                    <a href=${p.url}>${prettyUrl(p.url)}</a>
                    ${summary}
                </blockquote>
            ');
        } else {
            jsx('
                <div>
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
        return jsx('
            <Fragment>
                <div className="container">
                    <header className="p-3 p-md-4 text-center">
                        <a href="/"><img className="w-25 logo-header" src="/images/logo-c-t.png" alt="Charley Wong 和你查"/></a>
                    </header>
                    <div className="">
                        <div className="container-entity position-relative mx-auto px-3 py-4 rounded-10 bg-white container-btm">
                            <div className="mb-3 text-center">
                                <h3>${renderName(entity.name)}</h3>
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
                </div>
            </Fragment>
        ');
    }
}