package charleywong.entities;

class KaCaMaDesignLab implements Entity {
    public final id = "KaCaMaDesignLab";
    public final name = [
        en => "KaCaMa Design Lab"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KaCaMaDesignLab/",
            meta: [
                "about" =>
                "KaCaMa Design Lab excels in sustainable design and exploration of new design strategies that foster positive community and environmental values.",
                "categories" => [
                    "Business service"
                ],
                "addr" => "土瓜灣落山道108號志昌工業大廈8樓F2室 F-2, 8/F , Gee Chang Industrial Building, No. 108 Lok Shan Road, To Kwa Wan, Kowloon",
                "area" => "Hong Kong",
                "email" => "info@kacama.hk",
                "id" => "207267635979922"
            ]
        },
        {
            url: "https://www.kacama.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KaCaMaDesignLab/posts/3381904071849580"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

