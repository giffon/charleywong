package charleywong.entities;

class Momogutguthk implements Entity {
    public final id = "momogutgut.hk";
    public final name = [
        zh => "毛毛吉吉",
        en => "momogutgut"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/momogutgut.hk/",
            meta: [
                "about" => "Prefer living in color �",
                "categories" => [
                    "Accessories",
                    "Jewellery/watches"
                ],
                "email" => "hello@momogutgut.hk",
                "tel" => "60388597",
                "id" => "1294291567255304"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/momogutgut.hk/photos/a.1319976408020153/3260845257266582/"
        },
        {
            url: "https://www.facebook.com/momogutgut.hk/photos/a.1319976408020153/3129954563688986/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

