package charleywong.entities;

class AOBANAHK implements Entity {
    public final id = "AOBANA.HK";
    public final name = [
        zh => "青花亭"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AOBANA.HK/",
            meta: [
                "id" => "643716822720789",
                "about" => "定位請電洽詢問，謝謝！�",
                "categories" => [
                    "Restaurant",
                    "Brand",
                    "Coffee shop"
                ],
                "addr" => "荔枝角道113號",
                "area" => "Hong Kong",
                "email" => "aobana.hk@gmail.com",
                "tel" => "35903457"
            ]
        },
        {
            url: "https://www.instagram.com/aobana.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AOBANA.HK/photos/a.670919286667209/764563083969495/"
        },
        {
            url: "https://www.facebook.com/AOBANA.HK/videos/464898207484717/"
        },
        {
            url: "https://www.facebook.com/AOBANA.HK/photos/a.670919286667209/788301321595671/"
        }
    ];
    public final tags:Array<Tag> = [];
}

