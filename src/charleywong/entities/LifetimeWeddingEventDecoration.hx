package charleywong.entities;

class LifetimeWeddingEventDecoration implements Entity {
    public final id = "LifetimeDeco";
    public final name = [
        en => "Lifetime Wedding＆Event Decoration"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/wedding.lifetime/"
        },
        {
            url: "https://www.facebook.com/LifetimeDeco/",
            meta: [
                "id" => "291320147721477",
                "about" => "ONCE IN A LIFETIME\n\nWedding designs and Event production...\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Wedding planning service",
                    "Party supply and rental shop",
                    "Event"
                ],
                "addr" => "葵涌大圓街瑞榮工業大廈17樓D室",
                "area" => "Hong Kong",
                "email" => "lifetime.deco@gmail.com",
                "tel" => "64630795"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LifetimeDeco/posts/1265075433679272"
        }
    ];
}

