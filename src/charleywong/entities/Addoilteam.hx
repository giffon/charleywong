package charleywong.entities;

class Addoilteam implements Entity {
    public final id = "addoilteam";
    public final name = [
        en => "Add Oil Team",
        zh => "打氣小隊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://addoilteam.hk"
        },
        {
            url: "https://www.facebook.com/addoilteam/",
            meta: [
                "about" => "ADD OIL TEAM is a Hong Kong based artist collective, focusing on creative activism.\n打氣小隊是香港的藝術團隊，關心香港政治狀況和創意政治行動。",
                "categories" => [
                    "Artist"
                ],
                "email" => "info@addoilteam.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/addoilteam/photos/a.286939448179329/1054783444728255/"
        }
    ];
}

