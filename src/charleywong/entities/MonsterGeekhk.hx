package charleywong.entities;

class MonsterGeekhk implements Entity {
    public final id = "MonsterGeek.hk";
    public final name = [
        en => "MonsterGeek Board Game Store",
        zh => "棋怪桌上遊戲專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.monstergeekbg.com"
        },
        {
            url: "https://www.facebook.com/MonsterGeek.hk/",
            meta: [
                "id" => "514411628733082",
                "categories" => [
                    "Games/toys",
                    "Product/service",
                    "Shopping & retail"
                ],
                "email" => "monstergeek.bg@gmail.com",
                "tel" => "21144113"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MonsterGeek.hk/posts/1334361440071426"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

