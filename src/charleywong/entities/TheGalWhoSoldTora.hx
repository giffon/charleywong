package charleywong.entities;

class TheGalWhoSoldTora implements Entity {
    public final id = "sold.tora";
    public final name = [
        en => "The Gal Who Sold Tora"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sold.tora/",
            meta: [
                "about" => "From Twee to Luxe, Contemporary Jewelry crafted & Handmade in Hong Kong.",
                "categories" => [
                    "Jewellery/watches",
                    "Jewellery & watches shop",
                    "Fashion designer"
                ],
                "email" => "sold.tora@gmail.com",
                "id" => "61668818638"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sold.tora/posts/10156784508378639"
        },
        {
            url: "https://www.facebook.com/sold.tora/posts/10156402209243639"
        }
    ];
}

