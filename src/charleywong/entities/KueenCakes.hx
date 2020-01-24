package charleywong.entities;

class KueenCakes implements Entity {
    public final id = "kueencakes.hk";
    public final name = [
        en => "Kueen Cakes"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/kueen.cakes/"
        },
        {
            url: "https://www.facebook.com/kueencakes.hk/",
            meta: [
                "id" => "1359479837421869",
                "about" => "Custom-made, delicately handcrafted delicious cakes studio based in Hong Kong.",
                "categories" => [
                    "Sweet Shop",
                    "Restaurant",
                    "Bakery"
                ],
                "addr" => "Lai Chi Kok",
                "area" => "Kowloon, Hong Kong",
                "email" => "kueenhk16@gmail.com",
                "tel" => "98656362"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kueencakes.hk/photos/a.1616297758406741/2169277679775410/"
        }
    ];
}

