package charleywong.entities;

class MilkHoneyWorship implements Entity {
    public final id = "milkandhoneyworship";
    public final name = [
        en => "Milk&Honey Worship"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://milkandhoneyworship.wordpress.com"
        },
        {
            url: "https://www.facebook.com/milkandhoneyworship/",
            meta: [
                "id" => "1465441157014640",
                "about" => "以音樂說出我地嘅真實故事！\n\n出隊聯絡: milkandhoneyworship@gmail.com\nFind us on Youtube & IG : milkandhoney worship",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "milkandhoneyworship@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/milkandhoneyworship/posts/3041939576031449"
        },
        {
            url: "https://www.facebook.com/milkandhoneyworship/photos/a.1806582532900499/3034576263434447/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

