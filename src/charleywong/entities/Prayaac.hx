package charleywong.entities;

class Prayaac implements Entity {
    public final id = "prayaac";
    public final name = [
        en => "Praya Animal Clinic",
        zh => "柏雅動物診所"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/prayaac/",
            meta: [
                "id" => "756219877837725",
                "about" => "柏雅動物診所，位於西環堅尼地城，雖然不是非牟利/慈善團體，但成立人堅守熱誠、愛心、平衡的原則下，將醫療服務費用設置接近成本，希望從而幫助到更多的主人和動物們！！",
                "categories" => [
                    "Veterinary surgeon"
                ],
                "addr" => "堅尼地城吉席街9-15號吉利樓地下D舖",
                "area" => "Hong Kong",
                "email" => "prayaanimalclinin@gmail.com",
                "tel" => "34619126"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/prayaac/photos/a.757464887713224/2321888134604217/"
        },
        {
            url: "https://www.facebook.com/prayaac/photos/a.757464887713224/2182789208514111/"
        }
    ];
    public final tags:Array<Tag> = [];
}

