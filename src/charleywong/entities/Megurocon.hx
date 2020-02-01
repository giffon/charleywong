package charleywong.entities;

class Megurocon implements Entity {
    public final id = "megurocon";
    public final name = [
        zh => "目黑隱形眼鏡專門店",
        en => "Meguro Contact Lens"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/megurocon/",
            meta: [
                "id" => "214480628883595",
                "about" => "大量品牌款式隱形眼鏡 激安價現貨發售\n所有貨品保證100％正貨\nTel: 9344 5752 (whatsapp)\nInstagram: meguro_contact_lens",
                "categories" => [
                    "Retail company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/megurocon/photos/a.240010482997276/1064635333868116/"
        },
        {
            url: "https://www.facebook.com/megurocon/photos/a.240010482997276/1066385577026425/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

