package charleywong.entities;

class XINGmaQuillage implements Entity {
    public final id = "xingmaquillage";
    public final name = [
        en => "XING maQuillage"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.xingmaquillage.com"
        },
        {
            url: "https://www.facebook.com/xingmaquillage/",
            meta: [
                "id" => "440727335942494",
                "about" =>
                "Experience our french way of beauty.\nWe believed and created the bride look beautiful from the outside, and feel confident and comfortable deep inside.",
                "categories" => [
                    "Makeup artist",
                    "Brand",
                    "Tanning salon"
                ],
                "email" => "info@xingmaquillage.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/xingmaquillage/posts/3039934586021743"
        }
    ];
}

