package charleywong.entities;

class Playhardcompany implements Entity {
    public final id = "playhardcompany";
    public final name = [
        en => "PLAYHARD Store HK",
        zh => "手機用品生活雜貨店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/playhardcompany/"
        },
        {
            url: "https://www.facebook.com/playhardcompany/",
            meta: [
                "id" => "1464809037083191",
                "about" => "PLAYHARD 用心為你揀最好玩,新奇,高品質的產品! 價錢或其他查詢•請whatsapp +852 97701118 門市地址：1.炮台山英皇道121號七海商場地下G42A舖",
                "categories" => [
                    "Shopping & retail",
                    "Computer company"
                ],
                "addr" => "G42A, 7 Sea Shopping centre, 121 King\'s road, Fortress Hill, H.K.",
                "area" => "Hong Kong",
                "email" => "playhardcompany@gmail.com",
                "tel" => "35794889"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/playhardcompany/photos/a.1482302528667175/2522193061344778/"
        },
        {
            url: "https://www.facebook.com/playhardcompany/photos/a.1514936595403768/2485467785017306/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

