package charleywong.entities;

class LoveToken implements Entity {
    public final id = "lovetokenlt";
    public final name = [
        en => "Love Token"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://ltlovetokenlt.wixsite.com/lovetoken"
        },
        {
            url: "https://www.facebook.com/lovetokenlt/",
            meta: [
                "id" => "342539835854832",
                "categories" => [
                    "Arts and entertainment"
                ],
                "addr" => "工業街23-31號美聯工業大廈",
                "area" => "Kwai Chung",
                "email" => "lt.lovetoken.lt@gmail.com",
                "tel" => "64833082"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lovetokenlt/photos/a.356552014453614/2320224561419673/"
        }
    ];
}

