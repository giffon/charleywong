package charleywong.entities;

class Unun implements Entity {
    public final id = "ununliving";
    public final name = [
        en => "unun"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.ununliving.com"
        },
        {
            url: "https://www.facebook.com/ununliving/",
            meta: [
                "id" => "587771754694186",
                "about" => "經過一天辛勞後，浸泡到浴缸或者溫泉的一刻那種「啊啊啊好正啊」的感覺，就是冰島語的 ”unun” [讀音：uoon uoon] 。\n\n我們希望帶來一些讓你每次拿出來看都會有種「啊啊啊好正啊」的東西。",
                "categories" => [
                    "Shopping & retail",
                    "Playground"
                ],
                "email" => "hello@ununliving.com"
            ]
        },
        {
            url: "https://www.instagram.com/ununliving/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ununliving/photos/a.588424581295570/1529432197194799/"
        },
        {
            url: "https://www.facebook.com/ununliving/photos/a.588424581295570/1488842767920409/"
        },
        {
            url: "https://www.facebook.com/ununliving/posts/1373156299489057"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

