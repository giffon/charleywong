package charleywong.entities;

class Zukstudio implements Entity {
    public final id = "zuk.studio";
    public final name = [
        zh => "觸STUDIO"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.zuk-studio.com"
        },
        {
            url: "https://www.facebook.com/zuk.studio/",
            meta: [
                "about" => "觸STUDIO 致力為本地音樂人提供高質素的BAND房/鼓房租用服務及各類流行音樂課程，亦會定期舉辦音樂會活動，以推動本地音樂發展。",
                "categories" => [
                    "Musician/band",
                    "Music production studio",
                    "Music school"
                ],
                "email" => "zuk.studio@gmail.com",
                "id" => "170469933076106"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zuk.studio/photos/a.171044869685279/2174523759337370/"
        },
        {
            url: "https://www.facebook.com/zuk.studio/posts/2226081757514903"
        }
    ];
    public final tags:Array<Tag> = [];
}

