package charleywong.entities;

class Fungshuidesigncompany implements Entity {
    public final id = "fungshuidesigncompany";
    public final name = [
        zh => "果朗風水命理室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://fungshui-design.com"
        },
        {
            url: "https://www.facebook.com/fungshuidesigncompany/",
            meta: [
                "id" => "414591768557969",
                "about" => "《前事不準 絕不收費》 www.fungshui-design.com\nWECHAT ID: fungshuidesign",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fungshuidesigncompany/posts/3183092571707861"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

