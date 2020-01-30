package charleywong.entities;

class LCTEA implements Entity {
    public final id = "LCTEA.LCTEA";
    public final name = [
        en => "LC.TEA"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/lctea.lctea/"
        },
        {
            url: "https://www.facebook.com/LCTEA.LCTEA/",
            meta: [
                "id" => "474494469580113",
                "about" => "90s �創業創意創夢�\n🅽� ��🅸🅽 🅽� 🅶�🅸🅽 茶飲� 。\n所有水果系列新鮮即叫即製作�...\n\n\nSee more",
                "categories" => [
                    "Tea room"
                ],
                "email" => "lc.teadrink@hotmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B4tUCJKFZsx/"
        },
        {
            url: "https://www.instagram.com/p/B5SaTm7l0Cs/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

