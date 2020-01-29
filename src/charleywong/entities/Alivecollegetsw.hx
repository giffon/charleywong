package charleywong.entities;

class Alivecollegetsw implements Entity {
    public final id = "Alivecollegetsw";
    public final name = [
        zh => "樂活教室",
        en => "Alive College"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Alivecollegetsw/",
            meta: [
                "id" => "747725305345827",
                "about" => "-木結他/木箱鼓/夏威夷小結他班\n-流行音樂課程 (電結他/流行鼓/低音結他)\n-古典音樂課程(鋼琴/色士風/單簧管/樂理課程)...\n\n\nSee more",
                "categories" => [
                    "Music school",
                    "Musical instrument store"
                ],
                "addr" => "天水圍天秀路8號天一商城1086室",
                "area" => "Hong Kong",
                "email" => "alivecollegetsw@gmail.com",
                "tel" => "93291151"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Alivecollegetsw/videos/1027449500954023/"
        },
        {
            url: "https://www.facebook.com/Alivecollegetsw/photos/a.854072924711064/2548136451971361/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop,
    ];
}

