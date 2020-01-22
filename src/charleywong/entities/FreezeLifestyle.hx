package charleywong.entities;

class FreezeLifestyle implements Entity {
    public final id = "freezelifestyle";
    public final name = [
        en => "Freeze Lifestyle"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/freezelifestyle/",
            meta: [
                "about" => "FREEZE 以水泥為題材，混合其他元素，設計不同生活家品。",
                "categories" => [
                    "Product/service",
                    "Interior design studio",
                    "Cultural gift shop"
                ],
                "email" => "freeze.lifestyle@gmail.com",
                "id" => "1739860996294097"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/freezelifestyle/photos/a.1939530839660444/2481973398749516/"
        },
        {
            url: "https://www.facebook.com/freezelifestyle/posts/2493812427565613"
        }
    ];
}

