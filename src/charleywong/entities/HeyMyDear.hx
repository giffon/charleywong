package charleywong.entities;

class HeyMyDear implements Entity {
    public final id = "heymydearhk";
    public final name = [
        en => "Hey My Dear"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/heymydearhk/",
            meta: [
                "about" => "💞用心製作 滿滿的祝福\n\n#手鞠球 #耳環 #飾物 #吊飾 ...\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "email" => "heymydear.present@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/heymydearhk/photos/a.589569238089231/990686964644121/"
        },
        {
            url: "https://www.facebook.com/heymydearhk/photos/a.589569238089231/912546315791520/"
        },
        {
            url: "https://www.facebook.com/heymydearhk/photos/a.589569238089231/839300826449403/"
        }
    ];
}

