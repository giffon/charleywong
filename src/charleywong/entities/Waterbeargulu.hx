package charleywong.entities;

class Waterbeargulu implements Entity {
    public final id = "waterbeargulu";
    public final name = [
        zh => "水熊阿蟲",
        en => "WaterBear"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/waterbeargulu/",
            meta: [
                "about" => "在繁忙緊湊的香港，一隻住在南生圍的農村小子水熊呀蟲的日常。\n\nA story about a micro-animal living in rural area in Hong Kong.",
                "categories" => [
                    "Art"
                ],
                "email" => "waterbeargulu@gmail.com",
                "id" => "1102762323202008"
            ]
        },
        {
            url: "https://www.instagram.com/waterbeargulu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/waterbeargulu/photos/a.1102921186519455/1774685856009648/"
        },
        {
            url: "https://www.facebook.com/waterbeargulu/photos/a.1102921186519455/1710186785792889/"
        }
    ];
}

