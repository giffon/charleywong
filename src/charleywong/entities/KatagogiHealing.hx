package charleywong.entities;

class KatagogiHealing implements Entity {
    public final id = "KatagogiHealing";
    public final name = [
        en => "Katagogi Healing",
        zh => "源點療癒"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KatagogiHealing/",
            meta: [
                "id" => "459527410906136",
                "about" => "「信念．創造．實相」\n《Katagogi Healing 源點療癒》除了教授Access Bars ®療癒手法及Orgonite之製作外，亦提供Access Bars ®、靈氣、銅人療法等能量及遙距治療。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "katagogi@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KatagogiHealing/posts/1213543752171161"
        }
    ];
    public final tags:Array<Tag> = [];
}

