package charleywong.entities;

class VisionWeddingandProduction implements Entity {
    public final id = "VisionWeddingProduction";
    public final name = [
        en => "Vision Wedding and Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.visionwedding.com.hk"
        },
        {
            url: "https://www.facebook.com/VisionWeddingProduction/",
            meta: [
                "id" => "114004718864",
                "about" =>
                "Hong Kong professional wedding photography and videography\nWebsite: www.visionwedding.com.hk\nGallery: www.visionwedding.com.hk/gallery",
                "categories" => [
                    "Wedding planning service",
                    "Photographer"
                ],
                "addr" => "Sunbeam Plaza, 1155 Canton Road",
                "area" => "Hong Kong",
                "email" => "visionproductionhk@gmail.com",
                "tel" => "35681214"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/VisionWeddingProduction/photos/a.192762413864/10156878050568865/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

