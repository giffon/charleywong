package charleywong.entities;

class Wholesome implements Entity {
    public final id = "wholesomestore";
    public final name = [
        en => "Wholesome"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.wholesome.store"
        },
        {
            url: "https://www.facebook.com/wholesomestore/",
            meta: [
                "id" => "1866062043664791",
                "about" =>
                "Edit\nWholesome Grains Limited, hereinafter Wholesome is a vegetarian / vegan mini market. We carry local and imported non-GMO, organic or natural farming p",
                "categories" => [
                    "Organic food shop",
                    "Health Food Shop",
                    "Speciality food shop"
                ],
                "addr" => "Unit 6, G/F, Sky Tower, Tower 1, 38 Sung Wong Toi Road, Tokwawan,",
                "area" => "Kowloon, Hong Kong",
                "email" => "online@wholesomegrainsasia.com",
                "tel" => "26820638"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wholesomestore/posts/2618235288447459"
        }
    ];
    public final tags:Array<Tag> = [
        food,
        shop
    ];
}

