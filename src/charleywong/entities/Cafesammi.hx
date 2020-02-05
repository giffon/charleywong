package charleywong.entities;

class Cafesammi implements Entity {
    public final id = "cafesammi";
    public final name = [
        en => "Cafe Sammi",
        zh => "森美餐廳"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cafesammi/",
            meta: [
                "id" => "295177280942546",
                "categories" => [
                    "Cafe",
                    "New American restaurant",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "Shop A-2, G/F, Waldorf Center, 178-184 Sai Lau Kok Road, Tsuen Wan",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "thecafesammi@gmail.com",
                "tel" => "24147177"
            ]
        },
        {
            url: "https://www.instagram.com/cafesammi/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cafesammi/photos/a.299776450482629/783128562147413/"
        },
        {
            url: "https://www.facebook.com/cafesammi/photos/a.299776450482629/780161665777436/"
        },
        {
            url: "https://www.facebook.com/cafesammi/photos/a.331926170600990/849756765484592/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

