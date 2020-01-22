package charleywong.entities;

class GlamourLeathershop implements Entity {
    public final id = "GlamourLeather";
    public final name = [
        en => "Glamour Leathershop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GlamourLeather/",
            meta: [
                "about" => "營業時間: 平日 3:00-11:00 ; 六日及公眾假期 1:00-9:00\nWhatsapp - 95862044\nEmail - holun_lam@yahoo.com.hk",
                "categories" => [
                    "Local business"
                ],
                "email" => "holun_lam@yahoo.com.hk",
                "tel" => "95862044",
                "id" => "303037506429054"
            ]
        },
        {
            url: "https://www.instagram.com/glamourleathershop/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GlamourLeather/photos/a.553127174753418/2693001137432667"
        }
    ];
}

