package charleywong.entities;

class ChashouTaiHoRoad implements Entity {
    public final id = "chashouTaiHoRoad";
    public final name = [
        zh => "茶匠",
        en => "Chashou"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chashouTaiHoRoad/",
            meta: [
                "id" => "379873005946251",
                "about" => "大河道12號地下\n營業時間：1230-2300",
                "categories" => [
                    "Bubble tea shop",
                    "Product/service",
                    "Food stall"
                ],
                "addr" => "大河道12號",
                "area" => "Tsuen Wan, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chashouTaiHoRoad/photos/a.379883185945233/542015119732038/"
        }
    ];
}

