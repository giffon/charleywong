package charleywong.entities;

class CanakBridalStudio implements Entity {
    public final id = "canakbridal";
    public final name = [
        en => "Canak Bridal Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/canakbridal/",
            meta: [
                "about" =>
                "Canak Bridal Studio - Not only a bridal shop but also a Hong Kong designer brand carrying wedding gowns and evening gowns in sophisticated, romantic and stylish styles.",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "Unit A6, F/8, Manning Industrial Building, 116-118 How Ming St",
                "area" => "Kwun Tong",
                "email" => "canakbridal@gmail.com",
                "tel" => "68730244"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/canakbridal/posts/961302130930048"
        }
    ];
}

