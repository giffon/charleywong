package charleywong.entities;

class ChromaCafeKitchen implements Entity {
    public final id = "chromacafekitchen";
    public final name = [
        en => "Chroma Cafe + Kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chromacafekitchen/",
            meta: [
                "id" => "307471072962251",
                "about" => "CHROMA CAFE + KITCHEN - WHERE ART MEETS FOOD",
                "categories" => [
                    "Restaurant",
                    "Coffee shop",
                    "Tea room"
                ],
                "addr" => "8/F, Ming Sang Industrial Building, 19 Hing Yip Street, Kwun Tong",
                "area" => "Kowloon, Hong Kong",
                "tel" => "23412638"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chromacafekitchen/posts/850751055300914"
        }
    ];
}

