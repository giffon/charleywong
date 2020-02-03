package charleywong.entities;

class Ppdaddylive implements Entity {
    public final id = "ppdaddylive";
    public final name = [
        zh => "PP爸爸的日常"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ppdaddylive/",
            meta: [
                "id" => "653015691753361",
                "about" => "宅宅新手奶爸一名,卻有一個可愛女兒叫PP。",
                "categories" => [
                    "Writer"
                ],
                "email" => "ppdaddylive@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/ppdaddylive/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ppdaddylive/posts/1145633202491605"
        },
        {
            url: "https://www.facebook.com/ppdaddylive/posts/1123189091402683"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

