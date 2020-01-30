package charleywong.entities;

class Hotpotland implements Entity {
    public final id = "hotpotland";
    public final name = [
        zh => "火鍋撚",
        en => "Hot Pot Land"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://onondining.com"
        },
        {
            url: "https://www.facebook.com/hotpotland/",
            meta: [
                "id" => "538322209689283",
                "about" => "Hot Pot",
                "categories" => [
                    "Fondue restaurant",
                    "Shabu-shabu restaurant",
                    "Chinese restaurant"
                ],
                "addr" => "旺角染布房街6號1樓",
                "area" => "Mong Kok",
                "tel" => "23361098"
            ]
        },
        {
            url: "https://www.instagram.com/hotpot_land/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hotpotland/photos/a.576812192506951/1209969302524567/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

