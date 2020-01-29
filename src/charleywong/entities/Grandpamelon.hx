package charleywong.entities;

class Grandpamelon implements Entity {
    public final id = "Grandpamelon";
    public final name = [
        zh => "蜜瓜爺爺"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Grandpamelon/",
            meta: [
                "about" => "蜜瓜專門店",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "太子界限街12號A地鋪",
                "area" => "Hong Kong",
                "tel" => "92007163",
                "id" => "100590934723061"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Grandpamelon/photos/a.100607204721434/131827671599387/"
        },
        {
            url: "https://www.facebook.com/Grandpamelon/photos/a.100607204721434/125560745559413/"
        }
    ];
    public final tags:Array<Tag> = [];
}

