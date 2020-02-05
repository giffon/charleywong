package charleywong.entities;

class Hkpbia implements Entity {
    public final id = "hkpbia";
    public final name = [
        zh => "詹濟南"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkpbia/",
            meta: [
                "id" => "595709617150707",
                "about" => "查詢熱線: 8202 8217",
                "categories" => [
                    "Community"
                ],
                "tel" => "82028217"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkpbia/posts/2350034311718220"
        },
        {
            url: "https://www.facebook.com/hkpbia/posts/2347633811958270"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

