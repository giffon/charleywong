package charleywong.entities;

class HKApocalypse implements Entity {
    public final id = "neonlightinhk";
    public final name = [
        en => "HK Apocalypse"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/neonlightinhk/",
            meta: [
                "id" => "702204943247278",
                "about" => "HK Apocalypse 係香港一線霓虹燈佈景及禮品製作公司，曾為馬會及領展等大型商埸佈景，亦為超過500位個人客戶DIY屬於佢地專有既燈牌。\n\nWhatsapp : 5914 4251",
                "categories" => [
                    "Art",
                    "Home decor",
                    "Product/service"
                ],
                "email" => "hkneonwork@gmail.com",
                "tel" => "59144251"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/neonlightinhk/photos/a.711747575626348/1550893611711736/"
        },
        {
            url: "https://www.facebook.com/neonlightinhk/videos/2759143494143451/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

