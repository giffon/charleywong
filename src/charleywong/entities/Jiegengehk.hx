package charleywong.entities;

class Jiegengehk implements Entity {
    public final id = "jiegenge.hk";
    public final name = [
        zh => "桔梗",
        en => "JIEGENGE.HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/jiegenge.hk/"
        },
        {
            url: "https://www.facebook.com/jiegenge.hk/",
            meta: [
                "id" => "609276339572736",
                "about" => "從台灣來的味道\n開放式的廚房|咖啡|餐廳|空間\n陽台提供甜甜的水煙座位\n期待五月與大家見面",
                "categories" => [
                    "Cafe",
                    "Restaurant"
                ],
                "addr" => "香港旺角砵蘭街160號地鋪全棟",
                "area" => "Hong Kong",
                "email" => "info@jiegengehk.com",
                "tel" => "27877328"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jiegenge.hk/photos/a.621044248395945/772797356553966/"
        },
        {
            url: "https://www.facebook.com/jiegenge.hk/photos/a.621044248395945/738007736699595/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

