package charleywong.entities;

class Mpwculture implements Entity {
    public final id = "mpwculture";
    public final name = [
        zh => "明周文化",
        en => "MP Weekly"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mpweekly.com/culture"
        },
        {
            url: "https://www.facebook.com/mpwculture/",
            meta: [
                "id" => "1154186181262890",
                "about" => "從人說到城巿，然後又從城巿回到人的所在。關於美學、藝術、設計、品味、城市和日常，這裏有我們的看法。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "mpwsales@omghk.com",
                "tel" => "36053705"
            ]
        },
        {
            url: "https://www.instagram.com/mpw.culture/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mpwculture/videos/1385275004981454/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

