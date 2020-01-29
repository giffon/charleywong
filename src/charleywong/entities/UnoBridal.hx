package charleywong.entities;

class UnoBridal implements Entity {
    public final id = "unobridalhk";
    public final name = [
        en => "Uno Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/unobridalhk/",
            meta: [
                "about" => "Self service bridal salon that offers affordable rental service of designer brand wedding and evening gown",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "紅磡蕪湖街70-74號潤達商業大廈2樓C室",
                "area" => "Kowloon, Hong Kong",
                "email" => "yes@unobridal.com",
                "tel" => "35908605",
                "id" => "311862189385749"
            ]
        },
        {
            url: "https://www.instagram.com/unobridalhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/unobridalhk/photos/a.337371173501517/556677968237502/"
        },
        {
            url: "https://www.facebook.com/unobridalhk/photos/a.331373187434649/558094688095830/"
        },
        {
            url: "https://www.facebook.com/unobridalhk/posts/494287421143224"
        },
        {
            url: "https://www.facebook.com/unobridalhk/posts/464779967427303"
        }
    ];
    public final tags:Array<Tag> = [];
}

