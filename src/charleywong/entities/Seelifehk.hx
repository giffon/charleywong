package charleywong.entities;

class Seelifehk implements Entity {
    public final id = "seelifehk";
    public final name = [
        zh => "See生活"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/seelifehk/",
            meta: [
                "id" => "290828788242566",
                "about" => "觀察微妙細節 思考日常生活",
                "categories" => [
                    "Entertainment website"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/seelifehk/photos/a.293340324658079/463567924301984/"
        },
        {
            url: "https://www.facebook.com/seelifehk/videos/693948221103019/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

