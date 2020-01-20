package charleywong.entities;

class SweetAromaFlowers implements Entity {
    public final id = "sweetaromaflowers";
    public final name = [
        en => "Sweet Aroma Flowers"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sweetaromaflowers/",
            meta: [
                "about" => "May your life be filled with sweet aroma from flowers, leaves and treasures from the nature!",
                "categories" => [
                    "Florist"
                ],
                "email" => "sweetaromaflowers@gmail.com",
                "tel" => "63327149"
            ]
        },
        {
            url: "https://www.instagram.com/sweetaromaflowers/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sweetaromaflowers/photos/a.10151940880912218/10156963367307218/"
        },
        {
            url: "https://www.facebook.com/sweetaromaflowers/photos/a.10151940880912218/10156600570922218/"
        },
        {
            url: "https://www.facebook.com/sweetaromaflowers/photos/a.10151097049597218/10156848512457218/"
        }
    ];
}

