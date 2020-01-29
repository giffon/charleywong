package charleywong.entities;

class BallinHK implements Entity {
    public final id = "ballinhk";
    public final name = [
        en => "Ballin HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ballinhk/",
            meta: [
                "id" => "1024103347613349",
                "about" => "一個屬於籃球愛好者既地方,\n搜集及創作籃球影片，以另類方式講波，\n希望大家可以用另一個角度去睇籃球。...\n\n\nSee more",
                "categories" => [
                    "Sports",
                    "Sport league",
                    "Sports promoter"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/ballinhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ballinhk/photos/a.1036665176357166/2821535044536828/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

