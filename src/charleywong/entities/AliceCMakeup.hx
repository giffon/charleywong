package charleywong.entities;

class AliceCMakeup implements Entity {
    public final id = "alicecmakeuphk";
    public final name = [
        en => "AliceC Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/alicecmakeuphk/",
            meta: [
                "id" => "1820108554946126",
                "about" => "Makeup Artist. Based in HK\n\nBridal Makeup＊Makeup & Hair...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "alicecmakeuphk@gmail.com",
                "tel" => "97192481"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/alicecmakeuphk/photos/a.1822190411404607/2263044240652553/"
        }
    ];
    public final tags:Array<Tag> = [];
}

