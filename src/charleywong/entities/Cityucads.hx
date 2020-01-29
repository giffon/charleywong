package charleywong.entities;

class Cityucads implements Entity {
    public final id = "cityucads";
    public final name = [
        zh => "香港城市大學學生會動漫畫同人誌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cityucads/",
            meta: [
                "about" => "香港城市大學動漫畫同人誌",
                "categories" => [
                    "Community organisation"
                ],
                "email" => "mangetsu201925@gmail.com",
                "id" => "692188684166382"
            ]
        },
        {
            url: "https://www.instagram.com/cityucads_mangetsu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cityucads/posts/2500732433311989"
        },
        {
            url: "https://www.facebook.com/cityucads/posts/2613303438721554"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

