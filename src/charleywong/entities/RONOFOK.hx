package charleywong.entities;

class RONOFOK implements Entity {
    public final id = "RONOFOK";
    public final name = [
        zh => "霍朗齊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/Ronofok"
        },
        {
            url: "https://www.facebook.com/RONOFOK/",
            meta: [
                "id" => "199992420431125",
                "about" => "INDEPENDENT MUSICIAN",
                "categories" => [
                    "Musician/band"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/RONOFOK/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RONOFOK/photos/a.204210746675959/882408425522851/"
        },
        {
            url: "https://www.facebook.com/RONOFOK/posts/834632696967091"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

