package charleywong.entities;

class TheCorner implements Entity {
    public final id = "FreshInCorner";
    public final name = [
        en => "The Corner"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FreshInCorner/",
            meta: [
                "about" => "“The Corner w/ Punchy Coffee Roaster” is the new coffee stand established in 2017.",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "G/F, Hong Kong Arts Centre, 2 Harbour Road, Wan Chai",
                "area" => "Hong Kong",
                "email" => "shek@punchycoffee.com",
                "tel" => "65643143"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FreshInCorner/photos/a.316767888758600/846096255825758/"
        },
        {
            url: "https://www.facebook.com/FreshInCorner/photos/a.316767888758600/802367766865274/"
        }
    ];
}

