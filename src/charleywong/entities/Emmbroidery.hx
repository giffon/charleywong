package charleywong.entities;

class Emmbroidery implements Entity {
    public final id = "emmbroidery";
    public final name = [
        en => "emmbroidery__"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/emmbroidery/",
            meta: [
                "about" => "100%自家設計Handmade產品，一人工作，由設計至車縫也是親自做。將刺繡與融入生活，刺繡作品都是圍繞着設計師最喜歡的東西啊!\n\nhttps://instagram.com/emmbroidery__...\n\n\n\nSee more",
                "categories" => [
                    "Design & fashion"
                ],
                "email" => "emmbroiderybyem@gmail.com",
                "id" => "115190529882411"
            ]
        },
        {
            url: "https://www.instagram.com/emmbroidery__/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/emmbroidery/posts/161616671906463"
        },
        {
            url: "https://www.facebook.com/emmbroidery/posts/151904352877695"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

