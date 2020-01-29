package charleywong.entities;

class Settledcafe implements Entity {
    public final id = "settledcafe";
    public final name = [
        en => "Settled cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/settledcafe/",
            meta: [
                "id" => "1562705510473257",
                "about" => "Nice coffee\nNice breakfast\nNice day",
                "categories" => [
                    "Coffee shop",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "萬華區漢口街二段117號1樓",
                "area" => "Taipei, Taiwan",
                "email" => "settledcafe@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/settled_cafe/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/settledcafe/videos/2197405380561237/"
        },
        {
            url: "https://www.facebook.com/settledcafe/photos/a.1624551260955348/2665007783576352/"
        }
    ];
    public final tags:Array<Tag> = [];
}

