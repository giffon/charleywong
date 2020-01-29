package charleywong.entities;

class Zouguidang implements Entity {
    public final id = "zouguidang";
    public final name = [
        zh => "四川麻辣走鬼檔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/zouguidang/",
            meta: [
                "id" => "102762104488008",
                "categories" => [
                    "Restaurant"
                ],
                "tel" => "91957647"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zouguidang/photos/a.102795317818020/135728727858012/"
        },
        {
            url: "https://www.facebook.com/zouguidang/posts/134492821314936"
        },
        {
            url: "https://www.facebook.com/zouguidang/photos/a.102795317818020/134645131299705/"
        }
    ];
    public final tags:Array<Tag> = [];
}

