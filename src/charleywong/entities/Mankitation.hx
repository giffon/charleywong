package charleywong.entities;

class Mankitation implements Entity {
    public final id = "Mankitation";
    public final name = [
        en => "Mankitation"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Mankitation/",
            meta: [
                "about" => "一次偶然機會遇上第一個女皇頭\n從此愛上coin art\n更認識好多新朋友...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Art"
                ],
                "id" => "1698317387079188"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Mankitation/photos/a.1699325023645091/2547535845490667/"
        },
        {
            url: "https://www.facebook.com/Mankitation/photos/a.1699325023645091/2507311616179757/"
        },
        {
            url: "https://www.facebook.com/Mankitation/photos/a.1699325023645091/2498202657090653/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

