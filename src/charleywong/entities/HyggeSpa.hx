package charleywong.entities;

class HyggeSpa implements Entity {
    public final id = "hyggespabeauty";
    public final name = [
        en => "Hygge Spa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://wa.me/85261668601"
        },
        {
            url: "https://www.facebook.com/hyggespabeauty/",
            meta: [
                "id" => "911389239033799",
                "about" => "Hygge: 北歐詞, 意: 幸福的密碼。\n我們相信每個人都是獨特,值得被幸福擁抱\n...\n\n\nSee more",
                "categories" => [
                    "Health spa",
                    "Beauty salon",
                    "Massage service"
                ],
                "addr" => "18/F, Jardine Center No.50 Jardine Bazaar, Causeway Bay",
                "area" => "Hong Kong",
                "email" => "hygge.spa.beauty@gmail.com",
                "tel" => "61668601"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hyggespabeauty/posts/1300056746833711"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

