package charleywong.entities;

class Longfenghao implements Entity {
    public final id = "Longfenghao";
    public final name = [
        zh => "龍鳳號",
        en => "Long Feng Hao"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.longfenghao.co"
        },
        {
            url: "https://www.facebook.com/Longfenghao/",
            meta: [
                "id" => "1228575627248026",
                "categories" => [
                    "Taiwanese restaurant"
                ],
                "addr" => "觀塘駿業街56號中海日升中心2B鋪",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Longfenghao/photos/a.1276999979072257/2396611370444440/"
        },
        {
            url: "https://www.facebook.com/Longfenghao/photos/a.1276999979072257/2345309808907930/"
        },
        {
            url: "https://www.facebook.com/Longfenghao/photos/a.1276999979072257/2235200986585480/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

