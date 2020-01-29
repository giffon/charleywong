package charleywong.entities;

class CHAUDAUFU implements Entity {
    public final id = "CHAUDAUFU";
    public final name = [
        zh => "臭豆腐",
        en => "CHAU DAU-FU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CHAUDAUFU/",
            meta: [
                "about" => "“臭豆腐” 提供HENNA / JAGUA手繪服務 及 刺青服務，作品以貓貓為主導\n\n凡事有兩面，不求世界大同，只求一處立足之地，能與一眾臭味相投朋友相聚於此\n\n※有興趣可DM預約查詢",
                "categories" => [
                    "Product/Service",
                    "Tattoo & Piercing Shop"
                ],
                "email" => "chaudaufu@yahoo.com.hk",
                "id" => "127216350654337"
            ]
        },
        {
            url: "https://www.instagram.com/chaudaufu_hennatattoo/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CHAUDAUFU/photos/a.986392118070085/2962759647099979/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        makeup
    ];
}

