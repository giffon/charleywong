package charleywong.entities;

class Ericaceaehk implements Entity {
    public final id = "ericaceae.hk";
    public final name = [
        en => "Ericaceae Florist",
        zh => "發花癲"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.ericaceae.hk"
        },
        {
            url: "https://www.facebook.com/ericaceae.hk/",
            meta: [
                "id" => "361417767624433",
                "about" =>
                "曾跟隨多位世界大師學習花藝, 當中有Catherine Muller (巴黎), Jane Packer (倫敦), Diny Blom (荷蘭), New York Flower School (紐約)，偏愛自然風格派系。\n\nEricaceae 乃是杜鵑花科植物，讀音 \"Erica C\" 剛好係Erica Chan",
                "categories" => [
                    "Product/service",
                    "Florist"
                ],
                "email" => "eriaceae.hk@gmail.com",
                "tel" => "97817511"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ericaceae.hk/photos/a.362518920847651/868552490244289/"
        },
        {
            url: "https://www.facebook.com/ericaceae.hk/videos/1105658796432763/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

