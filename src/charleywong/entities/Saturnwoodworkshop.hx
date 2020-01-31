package charleywong.entities;

class Saturnwoodworkshop implements Entity {
    public final id = "saturnwoodworkshop";
    public final name = [
        zh => "石盾小木工",
        en => "Saturn Wood Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/saturnwoodworkshop/",
            meta: [
                "about" => "自家木箱鼓 ( DIY Cajon )\n各類木工班 ( Wood Workshop )\n訂製木製品 ( Tailor-made Wood Products )...\n\n\nSee more",
                "categories" => [
                    "Arts and crafts shop",
                    "Product/service"
                ],
                "addr" => "葵興華達工業中心C 座19樓04室",
                "area" => "Kwai Chung",
                "email" => "saturnwoodworkshop@gmail.com",
                "id" => "1432542930306758"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/saturnwoodworkshop/photos/a.1438403856387332/2660886314139074/"
        },
        {
            url: "https://www.facebook.com/saturnwoodworkshop/photos/a.1438403856387332/2550593555168351/"
        },
        {
            url: "https://www.facebook.com/saturnwoodworkshop/photos/a.1561649770729406/2526486297579077/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

