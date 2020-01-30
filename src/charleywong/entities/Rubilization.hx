package charleywong.entities;

class Rubilization implements Entity {
    public final id = "rubilization";
    public final name = [
        zh => "一葉之丘",
        en => "Rubilization"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/rubilization/",
            meta: [
                "about" => "絕美的壓花品牌-一葉之丘",
                "categories" => [
                    "Design & fashion"
                ],
                "addr" => "前鎮區二聖二路279號2樓",
                "area" => "Kaohsiung, Taiwan",
                "email" => "rubyyisss@hotmail.com",
                "id" => "882009985202166"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/rubilization/posts/2391740304229119"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

