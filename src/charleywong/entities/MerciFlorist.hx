package charleywong.entities;

class MerciFlorist implements Entity {
    public final id = "merciflorist";
    public final name = [
        en => "Merci Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.merciflorist.com"
        },
        {
            url: "https://www.facebook.com/merciflorist/",
            meta: [
                "id" => "1586897111601653",
                "about" => "Merci 法文意思是 Thank you！！\n當你想向重要嘅人表達心裡謝意、愛意嘅時候，可以為你度身訂造一個與別不同嘅鮮花禮物，帶俾佢意想不到嘅驚喜。\n\n官方網址：https://www.merciflorist.com/",
                "categories" => [
                    "Florist",
                    "Gift shop"
                ],
                "addr" => "柴灣柴灣道338號 柴灣市政大廈二樓S130",
                "area" => "Hong Kong",
                "email" => "mercifloristhk@gmail.com",
                "tel" => "64352899"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/merciflorist/photos/a.1587092568248774/2252413511716673/"
        },
        {
            url: "https://www.facebook.com/merciflorist/photos/a.1587092568248774/2240377996253558/"
        }
    ];
}

