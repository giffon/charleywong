package charleywong.entities;

class Nggyjamjam implements Entity {
    public final id = "nggyjamjam";
    public final name = [
        zh => "吾子果醬",
        en => "nggy jam jam"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/nggyjamjam/",
            meta: [
                "about" => "果醬皆選用新鮮水果,加上甜度低砂糖或冰糖一半的海藻糖,並以天然香草作為配搭,口味新穎有個性, 絕無防腐化學成份 ，新鮮健康",
                "categories" => [
                    "Organic food shop"
                ],
                "addr" => "荃灣柴灣角街道榮興工業中心20樓11室",
                "area" => "Hong Kong",
                "email" => "nggyjamjam@gmail.com",
                "id" => "1470080173294896"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/nggyjamjam/photos/a.1486286075007639/2122731294696444/"
        },
        {
            url: "https://www.facebook.com/nggyjamjam/photos/a.1486286075007639/2157748877861352/"
        }
    ];
    public final tags:Array<Tag> = [];
}

