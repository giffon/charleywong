package charleywong;

import js.lib.Promise;

typedef InstagramOEmbedResponse = {
    version:String,
    author_name:String,
    provider_name:String,
    provider_url:String,
    type:String,
    width:Int,
    html:String,
    thumbnail_width:Int,
    thumbnail_height:Int,
}

class Instagram {
    #if nodejs
    static public function getOEmbed(igPost:String):Promise<InstagramOEmbedResponse> {
        var query = js.node.Querystring.encode({
            url: igPost,
            access_token: Facebook.accessToken,
            omitscript: true,
        });
        return js.npm.fetch.Fetch.fetch('https://graph.facebook.com/v8.0/instagram_oembed?${query}')
            .then(r -> {
                if (r.ok)
                    r.json();
                else
                    r.text().then(text -> throw "Cannot get Embed HTML:\n" + text);
            });
    }
    #end
}