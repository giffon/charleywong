package charleywong.entities;

class Adivapage implements Entity {
    public final id = "adivapage";
    public final name = [
        en => "Adiva Hong Kong Family",
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.autobikejp.com"
        },
        {
            url: "https://www.facebook.com/adivapage/",
            meta: [
                "id" => "1459728537373418",
                "categories" => [
                    "Product/service"
                ],
                "email" => "support@autobikejp.hk",
                "tel" => "27126779"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/adivapage/posts/2844500445562880"
        }
    ];
    public final tags:Array<Tag> = [
        automobile
    ];
}

