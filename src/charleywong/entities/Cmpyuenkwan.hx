package charleywong.entities;

class Cmpyuenkwan implements Entity {
    public final id = "cmp.yuenkwan";
    public final name = [
        zh => "中醫師 林婉珺"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cmp.yuenkwan/",
            meta: [
                "id" => "762467043768273",
                "about" => "香港註冊中醫\n內科、婦科、兒科、針灸、骨傷、美容減肥",
                "categories" => [
                    "Family doctor"
                ],
                "addr" => "尖沙咀山林道23號901室",
                "area" => "Hong Kong",
                "email" => "cmp.yuenkwan@gmail.com",
                "tel" => "67514815"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cmp.yuenkwan/posts/3143035229044764"
        },
        {
            url: "https://www.facebook.com/cmp.yuenkwan/posts/2803344526347171"
        }
    ];
    public final tags:Array<Tag> = [];
}

