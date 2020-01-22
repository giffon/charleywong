package charleywong.entities;

class Why50Coffee implements Entity {
    public final id = "Why50hk";
    public final name = [
        en => "Why 50 Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Why50hk/",
            meta: [
                "about" => "Your Hip&Chill Coffee Neighbour",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "Shop E, G/F, Fu Fai Commercial Centre, 27 Hillier Street, Sheung Wan",
                "area" => "Hong Kong",
                "email" => "why50hk@gmail.com",
                "id" => "1498312237146476"
            ]
        },
        {
            url: "https://www.instagram.com/why50hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Why50hk/photos/a.1499656653678701/2388323234812034/"
        },
        {
            url: "https://www.facebook.com/Why50hk/posts/2347364062241285"
        },
        {
            url: "https://www.facebook.com/Why50hk/photos/a.1499656653678701/2325969057714119/"
        }
    ];
}

