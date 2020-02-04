package charleywong.entities;

class KCTIMEsStudio implements Entity {
    public final id = "kctimesstudio";
    public final name = [
        en => "KC TIMEs Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/kctimesstudio/",
            meta: [
                "id" => "109253867224505",
                "about" => "KC TIMEs 暫時只與黃色商店合作義賣。\n收益扣除成本後全數交由商店自行決定捐贈相關組織或有需要人仕。",
                "categories" => [
                    "Product/service"
                ],
                "email" => "kctimesstudio@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kctimesstudio/photos/a.109921670491058/109936907156201/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

