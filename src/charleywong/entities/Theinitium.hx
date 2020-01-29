package charleywong.entities;

class Theinitium implements Entity {
    public final id = "theinitium";
    public final name = [
        en => "Initium Media",
        zh => "端傳媒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://theinitium.com"
        },
        {
            url: "https://www.facebook.com/theinitium/",
            meta: [
                "about" => "立足香港，放眼全球；深度調查，數據挖掘；探本求源，不偏不倚，華語媒體新開端。\n投稿及新聞線索：editor@theinitium.com；廣告合作：ads@theinitium.com；會員制相關：membership@theinitium.com 。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "editor@theinitium.com",
                "id" => "466505160192708"
            ]
        },
        {
            url: "https://www.instagram.com/initiumphoto/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/theinitium/posts/1437304643112750"
        }
    ];
    public final tags:Array<Tag> = [];
}

