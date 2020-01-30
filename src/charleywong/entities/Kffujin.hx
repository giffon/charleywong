package charleywong.entities;

class Kffujin implements Entity {
    public final id = "kffujin";
    public final name = [
        zh => "輕井澤夫人工作室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kffujin/",
            meta: [
                "id" => "111901523524911",
                "categories" => [
                    "Shopping & retail",
                    "Art"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/kf_atelier/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kffujin/posts/148331456548584"
        },
        {
            url: "https://www.facebook.com/kffujin/photos/a.135091037872626/151280082920388/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

