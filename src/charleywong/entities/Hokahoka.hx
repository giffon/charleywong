package charleywong.entities;

class Hokahoka implements Entity {
    public final id = "hokahokasakedokoro";
    public final name = [
        en => "Hokahoka ほかほか"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hokahokasakedokoro/",
            meta: [
                "id" => "231903966860561",
                "about" => "居酒屋",
                "categories" => [
                    "Sushi Restaurant",
                    "Diner"
                ],
                "addr" => "Shop 51-52, G/F., Houston Centre, 63 Mody Road.",
                "area" => "Tsim Sha Tsui",
                "tel" => "23661784"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hokahokasakedokoro/photos/a.607756459275308/2888954237822174/"
        },
        {
            url: "https://www.facebook.com/hokahokasakedokoro/photos/a.607756459275308/2756966901020909/"
        },
        {
            url: "https://www.facebook.com/hokahokasakedokoro/posts/2766036576780608"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

