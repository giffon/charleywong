package charleywong.entities;

class Twentyonefromeight implements Entity {
    public final id = "twentyonefromeight";
    public final name = [
        zh => "廿一由八"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/twentyonefromeight/",
            meta: [
                "about" => "We are not doing furniture only but lifestyle.",
                "categories" => [
                    "Furniture shop",
                    "Coffee shop"
                ],
                "addr" => "11 Floor, Pang Kwong Building, 59 Hung To Road",
                "area" => "Kwun Tong",
                "email" => "info@twentyonefromeight.com",
                "tel" => "23211738",
                "id" => "258617804334076"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/twentyonefromeight/posts/1100499490145899"
        },
        {
            url: "https://www.facebook.com/twentyonefromeight/photos/a.260169980845525/1224238391105341/"
        }
    ];
}

