package charleywong.entities;

class LaiChiWoFarmersMarket implements Entity {
    public final id = "LaiChiWoFarmersMarket";
    public final name = [
        zh => "荔枝窩有農墟",
        en => "Lai Chi Wo Farmers\' Market"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.socsc.hku.hk/psl/laichiwo"
        },
        {
            url: "https://www.facebook.com/LaiChiWoFarmersMarket/",
            meta: [
                "id" => "1381891755215230",
                "about" => "由一群在荔枝窩復耕的農夫組成，將定期於每月第一個星期日（10:30 - 15:30），在地舉辦【荔枝窩有農墟】。\nFarmers\' Market is held Every First Sunday in Lai Chi Wo Village.",
                "categories" => [
                    "Organic food shop",
                    "Farmers market",
                    "Farm"
                ],
                "addr" => "荔枝窩 Lai Chi Wo",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LaiChiWoFarmersMarket/photos/a.1491334170937654/3207605495977171/"
        },
        {
            url: "https://www.facebook.com/LaiChiWoFarmersMarket/posts/3198560076881713"
        },
        {
            url: "https://www.facebook.com/LaiChiWoFarmersMarket/posts/2848354478568943"
        }
    ];
    public final tags:Array<Tag> = [];
}

