package charleywong.entities;

class Watergatechickenrice implements Entity {
    public final id = "watergatechickenrice";
    public final name = [
        zh => "水門雞飯"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/watergatechickenrice/",
            meta: [
                "id" => "162279381265050",
                "about" => "大埔總店地址：大埔汀角路11號地下 Tel: 2838 8171 元朗店：元朗教育路24至36號百宜樓地下A舖 Tel: 2382 8889 尖沙咀店：尖沙咀金馬倫道18號地下 Tel: 2369 8128",
                "categories" => [
                    "Thai restaurant",
                    "Theme restaurant",
                    "Diner"
                ],
                "addr" => "尖沙咀金馬倫道18號地下",
                "area" => "Tsim Sha Tsui",
                "tel" => "23698128"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/watergatechickenrice/videos/2805574846155935/"
        },
        {
            url: "https://www.facebook.com/watergatechickenrice/photos/a.163583681134620/619061675586816/"
        },
        {
            url: "https://www.facebook.com/watergatechickenrice/posts/594404394719211"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

