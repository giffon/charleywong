package charleywong.entities;

class Trainillustration implements Entity {
    public final id = "trainillustration";
    public final name = [
        zh => "火車",
        en => "Train"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/trainillustration/",
            meta: [
                "about" => "火車Train\nDesigner/ Illustrator\n若有任何插畫與設計合作事宜，歡迎私訊給我\n也可寄信至mayaolulu@gmail.com",
                "categories" => [
                    "Artist"
                ],
                "email" => "mayaolulu@gmail.com",
                "id" => "383305311788073"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/trainillustration/photos/a.389683487816922/2498478113604105/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

