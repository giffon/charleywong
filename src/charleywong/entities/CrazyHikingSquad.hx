package charleywong.entities;

class CrazyHikingSquad implements Entity {
    public final id = "CrazyHikingSquad";
    public final name = [
        zh => "痴hike線",
        en => "Crazy Hiking Squad－CHS.HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CrazyHikingSquad/",
            meta: [
                "about" => "探索香港每個角落，介紹香港生態，一群熱愛自然既年青人！",
                "categories" => [
                    "Recreation & sport website",
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CrazyHikingSquad/posts/1290531754448401"
        }
    ];
}

