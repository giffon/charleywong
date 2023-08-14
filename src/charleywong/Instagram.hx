package charleywong;

import haxe.io.Path;
import js.lib.Promise;
import CrossFetch.fetch;

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
    #if (nodejs && !chrome)
    static public function getOEmbed(igPost:String):Promise<InstagramOEmbedResponse> {
        final query = js.node.Querystring.encode({
            url: igPost,
            access_token: Facebook.accessToken,
            omitscript: true,
        });
        return fetch(Path.join([Facebook.apiEndpoint, Facebook.apiVersion, "instagram_oembed"]) + '?${query}')
            .then(r -> {
                if (r.ok)
                    r.json();
                else
                    r.text().then(text -> throw "Cannot get Embed HTML:\n" + text);
            });
    }
    #end
}