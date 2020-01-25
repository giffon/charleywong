package charleywong.entities;

class BlueBirdWeddingGallery implements Entity {
    public final id = "bluebirdwedding";
    public final name = [
        en => "Blue Bird Wedding Gallery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.bluebirdwedding.com"
        },
        {
            url: "https://www.facebook.com/bluebirdwedding/",
            meta: [
                "id" => "109980159085726",
                "about" => "We do everything about Wedding photography & videography !",
                "categories" => [
                    "Wedding planning service",
                    "Event videographer",
                    "Camera/photo"
                ],
                "addr" => "葵芳大連排道172-180號金龍工業中心4期2樓H室",
                "area" => "Hong Kong",
                "email" => "info@bluebirdwedding.com",
                "tel" => "91600817"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bluebirdwedding/posts/2537105526373165"
        }
    ];
}

