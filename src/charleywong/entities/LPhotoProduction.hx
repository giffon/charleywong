package charleywong.entities;

class LPhotoProduction implements Entity {
    public final id = "hkphotoproduction";
    public final name = [
        en => "L-Photo Production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkphotoproduction/",
            meta: [
                "id" => "2025728020826825",
                "about" => "Wedding Photographer | 香港婚紗婚禮攝影攝影師\nFor enquiries, Tel / Whatsapp : + 852 93812189\nEmail : hkphotoproduction@gmail.com",
                "categories" => [
                    "Producer",
                    "Photographer",
                    "Film"
                ],
                "email" => "hkphotoproduction@gmail.com",
                "tel" => "93812189"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkphotoproduction/photos/a.2682557485143872/2682557341810553/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

