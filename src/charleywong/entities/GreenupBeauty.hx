package charleywong.entities;

class GreenupBeauty implements Entity {
    public final id = "greenupbeauty";
    public final name = [
        en => "Greenup Beauty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.greenupbeauty.com/"
        },
        {
            url: "https://www.facebook.com/greenupbeauty/",
            meta: [
                "about" => "Greenup Beauty\n\nWhatsapp: +852 5577-7502",
                "categories" => [
                    "Beauty, cosmetic & personal care",
                    "Cosmetics shop"
                ],
                "addr" => "尖沙咀加拿芬道41-43號Solo Building 8樓801-802",
                "area" => "Kowloon, Hong Kong",
                "email" => "greenupbeauty@outlook.com",
                "id" => "138183733269132"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/greenupbeauty/posts/803008950119937"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop
    ];
}

