package charleywong.entities;

class Juicyfruittihk implements Entity {
    public final id = "Juicyfruittihk";
    public final name = [
        zh => "一菓欄",
        en => "Juicy Fruitti"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.juicyfruitti.com.hk"
        },
        {
            url: "https://www.facebook.com/Juicyfruittihk/",
            meta: [
                "id" => "352937812270777",
                "about" => "我地係「一菓欄」！我哋將會為大家帶黎第一手水果資訊，更方便易用嘅網上購物體驗。",
                "categories" => [
                    "Shopping & retail",
                    "Fruit & vegetable shop",
                    "Health Food Shop"
                ],
                "tel" => "97232225"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Juicyfruittihk/photos/a.354674122097146/488248998739657/"
        },
        {
            url: "https://www.facebook.com/Juicyfruittihk/photos/a.366450220919536/478713626359861/"
        }
    ];
}

