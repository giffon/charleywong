package charleywong.entities;

class LokingArt implements Entity {
    public final id = "LokingArt";
    public final name = [
        en => "LokingArt"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LokingArt/",
            meta: [
                "id" => "1482336541812533",
                "about" => "人像/動物畫/其他\n可inbox我訂造\n價錢可議",
                "categories" => [
                    "Artist"
                ],
                "email" => "ashley.wu2825@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LokingArt/photos/a.1522732124439641/2733615950017913/"
        },
        {
            url: "https://www.facebook.com/LokingArt/photos/a.1522732124439641/2555398611172982/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

