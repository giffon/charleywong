package charleywong.entities;

class BigCProduction implements Entity {
    public final id = "bigcproductionbigcstudio";
    public final name = [
        en => "Big C Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.bigcproduction.com"
        },
        {
            url: "https://www.facebook.com/bigcproductionbigcstudio/",
            meta: [
                "id" => "472572296246193",
                "about" => "Big C Production 提供歌曲創作、錄音、混音、排練室租借等服務，歡迎email查詢",
                "categories" => [
                    "Producer"
                ],
                "addr" => "RmG, 7/F, Everest Industrial Centre, Kwun Tong Road 396, Kwun Tong, Kowloon",
                "area" => "Hong Kong",
                "email" => "bigcproductionandbigcstudio@gmail.com",
                "tel" => "93487299"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bigcproductionbigcstudio/posts/1362735363896544"
        },
        {
            url: "https://www.facebook.com/bigcproductionbigcstudio/posts/1324154854421262"
        },
        {
            url: "https://www.facebook.com/bigcproductionbigcstudio/posts/1246130102223738"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

