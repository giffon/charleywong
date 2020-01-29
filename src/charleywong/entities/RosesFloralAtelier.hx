package charleywong.entities;

class RosesFloralAtelier implements Entity {
    public final id = "rosesfloralatelier";
    public final name = [
        en => "Roses Floral Atelier"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rosesfloralatelier/",
            meta: [
                "id" => "347055242037374",
                "about" => "Tel:64620792\n尖沙咀百利商場地下1號舖\nShop 01，G/F, Beverley Commercial Centre, 87-105 Chatham Road South, TST",
                "categories" => [
                    "Patio/garden"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rosesfloralatelier/photos/a.768027633273464/2541189925957217/"
        }
    ];
    public final tags:Array<Tag> = [];
}

