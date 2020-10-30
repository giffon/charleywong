package charleywong.browser;

import js.html.URL;
import react.*;
import react.ReactMacro.jsx;
import js.npm.react_facebook.ReactFacebook;
import js.npm.react_instagram_embed.InstagramEmbed;
import js.npm.react_telegram_embed.TelegramEmbed;
import js.Browser.*;
import charleywong.Utils.prettyUrl;
using StringTools;
using Lambda;

class MyInstagramEmbed extends ReactComponent {
    var url(get, never):String;
    function get_url() return props.url;

    var maxWidth(get, never):Float;
    function get_maxWidth() return props.maxWidth;

    var embedFailed(get, set):Bool;
    function get_embedFailed() return state.embedFailed;
    function set_embedFailed(v) {
        setState({
            embedFailed: v,
        });
        return v;
    }

    function new(props) {
        super(props);
        state = {
            embedFailed: false,
        };
    }

    override function render() {
        if (embedFailed)
            return jsx('<p><a href=${url}>${url}</a></p>');

        return jsx('
            <InstagramEmbed
                url=${url}
                hideCaption=${false}
                maxWidth=${maxWidth}
                onFailure=${() -> embedFailed = true}
            />
        ');
    }
}

class Posts extends ReactComponent {
    var posts(get, never):Array<charleywong.Entity.Post>;
    function get_posts() return props.posts;

    var resized(get, set):Bool;
    function get_resized() return state.resized;
    function set_resized(v) {
        setState({
            resized: v,
        });
        return v;
    }

    var lastWindowWidth:Float = window.innerWidth;

    function onResized() {
        var newWidth = window.innerWidth;
        if (lastWindowWidth != newWidth) {
            resized = true;
            lastWindowWidth = newWidth;
        }
    }

    override function componentDidMount() {
        lastWindowWidth = window.innerWidth;
        window.addEventListener('resize', onResized);
    }

    override function componentWillUnmount() {
        window.removeEventListener('resize', onResized);
    }

    function new(props) {
        super(props);
        state = {
            resized: false,
        };
    }

    static function ogProp(og:Array<{property:String, content:String}>, prop:String) {
        if (og == null)
            return null;

        return switch(og.find(p -> p.property == prop)) {
            case null: null;
            case p: p.content;
        }
    }

    static function isPostEmbeddable(post:Post):Bool {
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

    function renderPost(p:charleywong.Entity.Post) {
        if (resized) {
            return null;
        }
        var summary = if (p.summary != null) {
            var nodes = [];
            if (p.summary[zh] != null)
                nodes.push(jsx('<p key="zh">${p.summary[zh]}</p>'));
            if (p.summary[en] != null)
                nodes.push(jsx('<p key="en">${p.summary[en]}</p>'));
            nodes;
        } else
            null;

        var containerPadding = 15;
        var containerEntityPadding = 15;
        var fbPostMaxWidth = 750;
        var fbPostMinWidth = 350;
        var igMaxWidth = 658;
        var igMinWidth = 320;
        var width = lastWindowWidth - containerPadding * 2 - containerEntityPadding * 2;
        if (width > fbPostMaxWidth) {
            width = fbPostMaxWidth;
        }
        if (width > igMaxWidth) {
            width = igMaxWidth;
        }
        if (width < fbPostMinWidth) {
            width = fbPostMinWidth;
        }
        if (width < igMinWidth) {
            width = igMinWidth;
        }

        var classes = ["post", "my-1", "text-center"];

        var item = if (isPostEmbeddable(p)) {
            if (
                ~/^https:\/\/www\.facebook\.com\/[^\/]+\/(?:posts|photos|videos)\/.+$/.match(p.url) ||
                ~/^https:\/\/www\.facebook.com\/photo\//.match(p.url) ||
                ~/^https:\/\/www\.facebook.com\/permalink\.php\?story_fbid=[0-9]+&id=[0-9]+/.match(p.url)
            ) {
                classes.push("post-fb");
                jsx('
                    <EmbeddedPost
                        href=${p.url}
                        showText=${true}
                        width=${width}
                    />
                ');
            } else if (
                p.url.startsWith("https://www.instagram.com/p/")
            ) {
                classes.push("post-ig");
                jsx('
                    <MyInstagramEmbed
                        url=${p.url}
                        maxWidth=${width}
                    />
                ');
            } else if (
                p.url.startsWith("https://www.youtube.com/watch?v=")
            ) {
                classes.push("post-yt");
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
                classes.push("post-tg");
                jsx('
                    <TelegramEmbed src=${p.url} />
                ');
            } else if (
                p.url.startsWith("https://twitter.com/")
            ) {
                classes.push("post-twitter");
                jsx('
                    <blockquote className="twitter-tweet"><a href=${p.url}>${prettyUrl(p.url)}</a></blockquote>
                ');
            } else {
                if (p.meta != null && p.meta["og"] != null) {
                    classes.push("post-preview");
                    var og = p.meta["og"];
                    var title = ogProp(og, "og:title");
                    var image = '/proxy/image?post=' + p.url.urlEncode();
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
                    classes.push("post-link");
                    jsx('
                        <Fragment>
                            <a href=${p.url}>${prettyUrl(p.url)}</a>
                            ${summary}
                        </Fragment>
                    ');
                }
            }
        } else {
            classes.push("post-link");
            jsx('
                <Fragment>
                    <a href=${p.url}>${prettyUrl(p.url)}</a>
                    ${summary}
                </Fragment>
            ');
        }

        return jsx('
            <div key=${p.url} className=${classes.join(" ")}>
                ${item}
            </div>
        ');
    }

    override function render() {
        var rendered = jsx('
            <FacebookProvider appId=${Facebook.appId} version=${Facebook.apiVersion}>
                ${if (posts.length > 0) posts.map(renderPost) else null}
                ${if (posts.length == 0) "冇表態資料。有可能係先前嘅表態已被移除或者私隱設定有變。" else null}
            </FacebookProvider>
        ');
        if (resized) {
            resized = false;
        }
        return rendered;
    }
}