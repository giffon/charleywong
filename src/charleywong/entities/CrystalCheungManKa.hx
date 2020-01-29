package charleywong.entities;

class CrystalCheungManKa implements Entity {
    public final id = "CrystalCheungManKa";
    public final name = [
        en => "Crystal Cheung",
        zh => "張紋嘉"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UC_aXhoK5wImwFbSC0X_B9pg"
        },
        {
            url: "https://www.facebook.com/CrystalCheungManKa/",
            meta: [
                "about" => "Job Enquiry : Fontane Sit 9500 5577",
                "categories" => [
                    "Public figure"
                ],
                "email" => "qui.crystalcheung@gmail.com",
                "id" => "447921795634"
            ]
        },
        {
            url: "https://www.instagram.com/quicheung/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CrystalCheungManKa/photos/a.458654625634/10162053397570635/"
        },
        {
            url: "https://www.instagram.com/p/B7VY4nshynn/"
        }
    ];
    public final tags:Array<Tag> = [];
}

