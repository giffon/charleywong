package charleywong.entities;

class ODYHandemadeJewelleryMetalWorkshop implements Entity {
    public final id = "OdyTheOfficial";
    public final name = [
        en => "ODY Handemade Jewellery & Metal Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.odytheofficial.com"
        },
        {
            url: "https://www.facebook.com/OdyTheOfficial/",
            meta: [
                "id" => "828491347175703",
                "about" => "Handmade.全人手製造\n利用傳統打金技術\nTraditional Metalsmithing...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Jewellery & watches shop",
                    "Product/service"
                ],
                "addr" => "Kowloon Bay Industrial Centre, 15 Wang Hoi Road",
                "area" => "Kowloon Bay, Hong Kong",
                "email" => "info.ody@gmail.com",
                "tel" => "62067356"
            ]
        },
        {
            url: "https://www.instagram.com/odytheofficial/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/OdyTheOfficial/posts/2803578873000264"
        }
    ];
}

