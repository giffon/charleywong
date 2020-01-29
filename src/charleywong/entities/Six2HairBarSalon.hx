package charleywong.entities;

class Six2HairBarSalon implements Entity {
    public final id = "Six2hairbarsalon";
    public final name = [
        en => "Six2 Hair Bar Salon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/six2hairnail/"
        },
        {
            url: "https://www.facebook.com/Six2hairbarsalon/",
            meta: [
                "id" => "1720071708084564",
                "about" => "Six2 hair bar salon係由一班年輕資深髮型設計師聚集而成的髮型屋",
                "categories" => [
                    "Hair salon",
                    "Barber\'s"
                ],
                "addr" => "土瓜灣馬頭圍道284號A地鋪",
                "area" => "Kowloon, Hong Kong",
                "tel" => "92644605"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Six2hairbarsalon/posts/2601280233297036"
        }
    ];
    public final tags:Array<Tag> = [];
}

