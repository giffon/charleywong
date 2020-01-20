package charleywong.entities;

class Hutinmountain implements Entity {
    public final id = "hutinmountain";
    public final name = [
        zh => "感然山莊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hutinmountain/",
            meta: [
                "about" => "一針一線,滿載心意;\n細味萬物,感謝自然;\n山中小屋,體會四時。",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hutinmountain/posts/2401426630127448"
        }
    ];
}

