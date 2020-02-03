package charleywong.entities;

class Catplushongkong implements Entity {
    public final id = "catplushongkong";
    public final name = [
        zh => "貓 +",
        en => "CAT PLUS"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.catplushk.com"
        },
        {
            url: "https://www.facebook.com/catplushongkong/",
            meta: [
                "id" => "475705625969357",
                "about" => "Cat Plus 不瘋狂, 也不是最便宜, 但我們都會以貓咪為角度出發, 用心入貨, 讓大家用得安心放心.",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "cat@catplushk.com",
                "tel" => "59802560"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/catplushongkong/photos/a.577556492450936/1230525860487326/"
        },
        {
            url: "https://www.facebook.com/catplushongkong/photos/a.475708722635714/1231084973764748/"
        }
    ];
    public final tags:Array<Tag> = [
        animal,
        shop
    ];
}

