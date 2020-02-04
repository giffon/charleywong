package charleywong.entities;

class XiaoShiGuang implements Entity {
    public final id = "XiaoShiGuang";
    public final name = [
        zh => "小時光",
        en => "XiaoShiGuang"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/XiaoShiGuang/",
            meta: [
                "id" => "412500708823533",
                "about" => "Small is good.",
                "categories" => [
                    "Vintage shop"
                ],
                "addr" => "Room 103, Lam\'s Building, 6-10 Kau U Fong",
                "area" => "Central, Hong Kong",
                "email" => "xiaoshiguang.hk@gmail.com",
                "tel" => "25300035"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/XiaoShiGuang/posts/3011955728878005"
        },
        {
            url: "https://www.facebook.com/XiaoShiGuang/posts/3068419183231659"
        }
    ];
    public final tags:Array<Tag> = [
        accessories,
        clothing
    ];
}

