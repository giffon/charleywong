package charleywong.browser;

import js.Syntax;
import react.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import charleywong.Instagram;

typedef InstagramEmbedProps = {
    final post:Post;
}

typedef InstagramEmbedState = {}

class InstagramEmbed extends ReactComponentOf<InstagramEmbedProps, InstagramEmbedState> {
    override function componentDidMount() {
        Syntax.code("instgrm.Embeds.process()");
    }
    override function render() {
        // Without a pre-fetched oEmbed, use the standard embed markup, which embeds.js turns into the embed.
        if (props.post.meta == null || props.post.meta["oEmbed"] == null)
            return jsx('
                <blockquote className="instagram-media" data-instgrm-permalink=${props.post.url} data-instgrm-version="14">
                    <a href=${props.post.url}>${props.post.url}</a>
                </blockquote>
            ');

        var content = {
            __html: (props.post.meta["oEmbed"]:InstagramOEmbedResponse).html,
        };

        return jsx('
            <div dangerouslySetInnerHTML=${content}></div>
        ');
    }
}