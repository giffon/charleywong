package charleywong.entities;

class Mechcalvinshop implements Entity {
    public final id = "mechcalvinshop";
    public final name = [
        en => "MECHCalvin Computer",
        zh => "麥加文電腦"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://shop.mechcalvin.com"
        },
        {
            url: "https://www.facebook.com/mechcalvinshop/",
            meta: [
                "about" => "專營砌機/ 維修/ 升級/ 中小企支援服務, 歡迎查詢.",
                "categories" => [
                    "Computer repair service",
                    "Computer company"
                ],
                "email" => "computer@mechcalvin.com",
                "tel" => "60510020",
                "id" => "113753091995930"
            ]
        },
        {
            url: "https://www.instagram.com/mechcalvinshop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mechcalvinshop/posts/2277136075657610"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}

