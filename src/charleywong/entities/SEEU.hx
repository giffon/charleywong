package charleywong.entities;

class SEEU implements Entity {
    public final id = "seeudaily";
    public final name = [
        en => "SEE U"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://seeuhk.com"
        },
        {
            url: "https://www.facebook.com/seeudaily/",
            meta: [
                "id" => "855708344553751",
                "about" => "See U in a good day\n葵涌廣場3樓時尚坊78號鋪\n....\n\n\n\n\n\n\n\n\nSee more",
                "categories" => [
                    "Clothing (brand)"
                ],
                "addr" => "葵涌廣場3樓時尚坊78號鋪 { 爭鮮對面第1條行第2間 ｝",
                "area" => "Hong Kong",
                "tel" => "64358843"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seeudaily/photos/a.863300167127902/1654943177963593/"
        },
        {
            url: "https://www.facebook.com/seeudaily/photos/a.1030681197056464/1560212414103337/"
        }
    ];
}

