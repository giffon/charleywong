package charleywong.entities;

class Newosakajapanesefood implements Entity {
    public final id = "newosakajapanesefood";
    public final name = [
        zh => "大阪日本料理"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/newosakajapanesefood/",
            meta: [
                "id" => "1364143383624097",
                "about" => "日式小店",
                "categories" => [
                    "Sushi Restaurant"
                ],
                "addr" => "元朗鳳琴街18號玉龍樓地下15號",
                "area" => "Yuen Long",
                "email" => "hosiu514@yahoo.com.hk",
                "tel" => "23321611"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/newosakajapanesefood/photos/a.1443164909055277/2845415945496826/"
        },
        {
            url: "https://www.facebook.com/newosakajapanesefood/posts/2779907982047623"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

