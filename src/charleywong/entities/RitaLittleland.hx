package charleywong.entities;

class RitaLittleland implements Entity {
    public final id = "Rita.Littleland";
    public final name = [
        zh => "維他雜貨店",
        en => "Rita.Littleland"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Rita.Littleland/",
            meta: [
                "id" => "347187035309912",
                "about" =>
                "Rita.Littleland 香港插畫手作品牌\nFreelance Graphic Designer • Illustrator from HK\n❤︎Drawing❤︎Handcraft❤︎Taiwan\nMail: ritachuyw@gmail.com #插畫 #手作 #illustration\nIG: Rita_littleland",
                "categories" => [
                    "Arts & humanities website"
                ],
                "email" => "ritachuyw@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Rita.Littleland/photos/a.801419333220011/2806773322684592/"
        },
        {
            url: "https://www.facebook.com/Rita.Littleland/photos/a.801419333220011/2816990908329500/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

