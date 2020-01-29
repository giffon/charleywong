package charleywong.entities;

class FlowerDiary implements Entity {
    public final id = "flowerdiaryhk";
    public final name = [
        en => "Flower Diary"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flowerdiaryhk/",
            meta: [
                "about" => "Flower Diary devote our passion and go into details in handcrafting products in connecting luxury flowers with our customers.",
                "categories" => [
                    "Florist",
                    "Product/service",
                    "Gift shop"
                ],
                "addr" => "Hong Kong",
                "area" => "Hong Kong",
                "email" => "flowerdirayhk@gmail.com",
                "tel" => "57023770",
                "id" => "368183327054281"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flowerdiaryhk/photos/a.386498918556055/614870319052246/"
        },
        {
            url: "https://www.facebook.com/flowerdiaryhk/photos/a.386498918556055/628514731021138/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

