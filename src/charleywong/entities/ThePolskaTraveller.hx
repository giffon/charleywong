package charleywong.entities;

class ThePolskaTraveller implements Entity {
    public final id = "thepolskatraveller";
    public final name = [
        en => "The Polska Traveller"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thepolskatraveller/",
            meta: [
                "about" =>
                "A handmade jewelry brand, using a rotating collection of vintage objects, antique materials from Poland to create.\nhttp://instagram.com/thepolskatraveller",
                "categories" => [
                    "Brand",
                    "Arts and crafts shop",
                    "Jewellery & watches shop"
                ],
                "addr" => "Shop 5, G/F, 19-23 Tung Lo Wan Rd, Causeway Bay",
                "area" => "Hong Kong",
                "email" => "thepolskatraveller@gmail.com",
                "id" => "291416887590235"
            ]
        },
        {
            url: "https://www.instagram.com/thepolskatraveller/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thepolskatraveller/photos/a.636944253037495/2629842803747620"
        }
    ];
    public final tags:Array<Tag> = [];
}

