package charleywong.entities;

class MuzePens implements Entity {
    public final id = "Muzepen";
    public final name = [
        en => "Muze Pens"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Muzepen/",
            meta: [
                "about" => "Provider of fine writing instrument, journals, papers, fountain pen inks and other pen accessories in Hong Kong",
                "categories" => [
                    "Gift shop",
                    "Collectibles shop"
                ],
                "email" => "info@muzepens.com",
                "tel" => "36195136",
                "id" => "904960262861056"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Muzepen/photos/a.935005929856489/2508110985879301"
        }
    ];
}

