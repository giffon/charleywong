package charleywong.entities;

class WildlifeNotesHK implements Entity {
    public final id = "WildlifeNotesHK";
    public final name = [
        zh => "野活手記",
        en => "Wildlife Notes"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WildlifeNotesHK/",
            meta: [
                "about" => "戶外活動平台︱訓練課程︱海陸旅程\n山藝︱繩索技術︱冰雪攀登︱不留痕跡︱立划板",
                "categories" => [
                    "Sport & recreation",
                    "Product/service"
                ],
                "email" => "markwong2046@rocketmail.com",
                "id" => "429312713936730"
            ]
        },
        {
            url: "https://www.instagram.com/wildlifenoteshk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WildlifeNotesHK/posts/1196769933857667"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

