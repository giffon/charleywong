package charleywong.entities;

class Starology implements Entity {
    public final id = "starologystudio";
    public final name = [
        en => "Starology"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/starologystudio/",
            meta: [
                "about" => "· Starology ·\n工作室 | 自家品牌\n...\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Arts and entertainment"
                ],
                "email" => "starologystudio@gmail.com",
                "tel" => "95887569",
                "id" => "586891734790338"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/starologystudio/photos/a.626930674119777/1933674886778676"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop,
        wedding
    ];
}

