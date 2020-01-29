package charleywong.entities;

class Cowcowtony implements Entity {
    public final id = "cowcowtony";
    public final name = [
        zh => "柳廣成"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cowcowtony/",
            meta: [
                "about" => "some drawings.\nBased in Hong Kong.",
                "categories" => [
                    "Author"
                ],
                "email" => "cowcowtony@hotmail.com",
                "id" => "306150939555362"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cowcowtony/posts/1071168099720305"
        },
        {
            url: "https://www.facebook.com/cowcowtony/photos/a.306153636221759/1077842775719504/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

