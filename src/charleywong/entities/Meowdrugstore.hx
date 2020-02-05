package charleywong.entities;

class Meowdrugstore implements Entity {
    public final id = "Meowdrugstore";
    public final name = [
        zh => "貓婆藥房"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/user/kaoonyee"
        },
        {
            url: "https://www.facebook.com/Meowdrugstore/",
            meta: [
                "id" => "513124815426458",
                "about" => "。。。敏感皮膚的護膚戰鬥史。。。\n護膚 健康 化妝 營養 自然療法\nwww.morilovebeauty.com",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Meowdrugstore/videos/454599908765464/"
        },
        {
            url: "https://www.facebook.com/Meowdrugstore/photos/a.530112720394334/3271242142948031/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop
    ];
}

