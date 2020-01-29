package charleywong.entities;

class Twisterdesign implements Entity {
    public final id = "twisterdesign";
    public final name = [
        zh => "T&P 設計工作者"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/twisterdesign/",
            meta: [
                "id" => "1592078031062941",
                "about" => "誠意設計分享作品給大家欣賞",
                "categories" => [
                    "Graphic designer",
                    "Design & fashion",
                    "Designer"
                ],
                "addr" => "香港",
                "area" => "Tuen Mun"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/twisterdesign/posts/2416028765334526"
        }
    ];
    public final tags:Array<Tag> = [];
}

