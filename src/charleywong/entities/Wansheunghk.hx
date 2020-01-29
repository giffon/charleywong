package charleywong.entities;

class Wansheunghk implements Entity {
    public final id = "wansheunghk";
    public final name = [
        zh => "雲想暗瘡療膚中心"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.weshare.hk/lawyoyo"
        },
        {
            url: "https://www.facebook.com/wansheunghk/",
            meta: [
                "id" => "424959017540796",
                "about" => "雲想暗瘡治療活膚中心",
                "categories" => [
                    "Health/beauty"
                ],
                "addr" => "太子西洋菜南街258-260號長寧大廈3樓E室",
                "area" => "Kowloon, Hong Kong",
                "email" => "lawyoyo122@hotmail.com",
                "tel" => "66123744"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wansheunghk/posts/2308650962504916"
        }
    ];
    public final tags:Array<Tag> = [];
}

