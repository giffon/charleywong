package charleywong.entities;

class HarmonyCoffeeHongKong implements Entity {
    public final id = "harmonycoffee.hk";
    public final name = [
        en => "Harmony Coffee Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/harmonycoffee.hk/",
            meta: [
                "about" => "Bespoke coffee service for parties, weddings, corporate events and workshops!",
                "categories" => [
                    "Event planner",
                    "Coffee shop"
                ],
                "email" => "harmonycoffee.hk@gmail.com",
                "tel" => "35003702",
                "id" => "1048930775312347"
            ]
        },
        {
            url: "https://www.instagram.com/harmonycoffee.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/harmonycoffee.hk/posts/1314906652048090"
        },
        {
            url: "https://www.facebook.com/harmonycoffee.hk/posts/1304361329769289"
        },
        {
            url: "https://www.facebook.com/harmonycoffee.hk/photos/a.1119943008211123/1283219258550163/"
        },
        {
            url: "https://www.facebook.com/harmonycoffee.hk/photos/a.1107869549418469/1224177241121032/"
        }
    ];
}

