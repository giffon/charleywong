package charleywong.entities;

class Staywithinbookspace implements Entity {
    public final id = "staywithinbookspace";
    public final name = [
        zh => "義守書社"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/staywithinbookspace/",
            meta: [
                "about" => "生命終有一死，\n每個人都想好生好死，\n卻是身不由己。...\n\n\n\n\nSee more",
                "categories" => [
                    "Book shop",
                    "Community group",
                    "Community"
                ],
                "addr" => "柴灣泰民街11-15號樂翠臺商場D3舖",
                "area" => "Hong Kong",
                "email" => "staywithinbookspace@gmail.com",
                "tel" => "91800122"
            ]
        },
        {
            url: "https://www.instagram.com/staywithinbookspacehongkong/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/staywithinbookspace/posts/1195919980612954"
        }
    ];
}

