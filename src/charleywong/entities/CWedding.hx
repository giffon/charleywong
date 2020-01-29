package charleywong.entities;

class CWedding implements Entity {
    public final id = "CWeddinghk";
    public final name = [
        en => "CWedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cweddinghk.wixsite.com/floral"
        },
        {
            url: "https://www.facebook.com/CWeddinghk/",
            meta: [
                "id" => "196397813853525",
                "about" => "Effortless, simple, and elegant western wedding style.\nFirst started business in Vancouver, Canada and now based in Hong Kong.",
                "categories" => [
                    "Product/service",
                    "Shopping & retail",
                    "Florist"
                ],
                "email" => "ask.cwedding@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CWeddinghk/posts/1391550981004863"
        }
    ];
    public final tags:Array<Tag> = [];
}

