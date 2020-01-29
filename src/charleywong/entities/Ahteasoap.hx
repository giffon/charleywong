package charleywong.entities;

class Ahteasoap implements Entity {
    public final id = "ahteasoap";
    public final name = [
        zh => "阿茶手皂 手工皂及香薰保養品"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ahteasoap/",
            meta: [
                "about" => "手工皂、手作護膚品及香薰護膚品\n100% 全人手製作，香港製造，堅持選用優質材料，純天然香薰精油， 不含香精，減少多餘人工合成化學物，追求自然、簡單、健康，環保的生活",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "ahteasoap@gmail.com",
                "tel" => "62206873",
                "id" => "500214870103170"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ahteasoap/photos/a.525163954274928/1462600843864563/"
        },
        {
            url: "https://www.facebook.com/ahteasoap/posts/1465539576904023"
        },
        {
            url: "https://www.facebook.com/ahteasoap/posts/1656285351162777"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

