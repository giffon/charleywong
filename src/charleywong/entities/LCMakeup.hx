package charleywong.entities;

class LCMakeup implements Entity {
    public final id = "LCmakeupHK";
    public final name = [
        en => "LC Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lc-makeup.com"
        },
        {
            url: "https://www.facebook.com/LCmakeupHK/",
            meta: [
                "id" => "705002609663974",
                "about" => "LC Makeup - Hair & Makeup Artistry\n專業新娘及宴會化妝\n\ninfo@lc-makeup.com",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "info@lc-makeup.com",
                "tel" => "91235650"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LCmakeupHK/photos/a.890532247777675/1443204225843805/"
        }
    ];
}

