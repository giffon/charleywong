package charleywong.entities;

class Tvmosthk implements Entity {
    public final id = "tvmosthk";
    public final name = [
        zh => "毛記電視"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.tvmost.com.hk"
        },
        {
            url: "https://www.facebook.com/tvmosthk/",
            meta: [
                "id" => "1625935910988073",
                "about" => "【毛記電視】\n全力以赴　毛牌仲好",
                "categories" => [
                    "TV channel"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tvmosthk/posts/2432593603655629"
        },
        {
            url: "https://www.facebook.com/tvmosthk/posts/2410861512495505"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

