package charleywong.entities;

class Galaxydigitalhk implements Entity {
    public final id = "galaxydigitalhk";
    public final name = [
        en => "Galaxydigitalhk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.galaxydigital.com.hk"
        },
        {
            url: "https://www.facebook.com/galaxydigitalhk/",
            meta: [
                "id" => "181164631934620",
                "about" => "相機濾鏡全港最齊, 富士即影即有熱賣~",
                "categories" => [
                    "Camera shop",
                    "Shopping & retail"
                ],
                "addr" => "旺角信和中心218號鋪(扶手電梯上到頂層第一間)",
                "area" => "Hong Kong",
                "email" => "sales@galaxydigital.com.hk",
                "tel" => "34827800"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/galaxydigitalhk/posts/2505250359526024"
        }
    ];
    public final tags:Array<Tag> = [
        photography,
        shop
    ];
}

