package charleywong.entities;

class CafCorridor implements Entity {
    public final id = "cafecorridor";
    public final name = [
        en => "Café Corridor"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cafecorridor/",
            meta: [
                "about" => "A passage to the coffee world since 2001.",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "G/F, 26A Russell Street, Causeway Bay",
                "area" => "Causeway Bay",
                "email" => "info@cafecorridor.hk",
                "tel" => "28922927",
                "id" => "185341221498643"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cafecorridor/photos/a.806803999352359/2696719730360767/"
        },
        {
            url: "https://www.facebook.com/cafecorridor/photos/a.806803999352359/2595871233778951/"
        }
    ];
}

