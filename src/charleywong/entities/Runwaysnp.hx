package charleywong.entities;

class Runwaysnp implements Entity {
    public final id = "runwaysnp";
    public final name = [
        zh => "模‧良品",
        en => "Runwaysnp"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/runwaysnp/",
            meta: [
                "categories" => [
                    "Product/service",
                    "Shopping & retail"
                ],
                "email" => "support@runwaysnp.com",
                "tel" => "37088147",
                "id" => "868294689892366"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/runwaysnp/posts/2286549748066846"
        }
    ];
}

