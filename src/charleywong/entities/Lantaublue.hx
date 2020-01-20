package charleywong.entities;

class Lantaublue implements Entity {
    public final id = "lantaublue";
    public final name = [
        zh => "片藍造",
        en => "Indigo 11.50"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lantaublue/",
            meta: [
                "about" => "香港第一間天然藍染布工房，來自台灣的布料跟藍草提煉的藍泥做出最原始最有感覺的藍色小物。\n同時藍染體驗班也開始接受預約。",
                "categories" => [
                    "Textile company",
                    "Advertising/marketing",
                    "Travel and transport"
                ],
                "addr" => "26 , Tai Long Wan , Shek pik , Lantau",
                "area" => "Hong Kong",
                "email" => "maxmaxs0@yahoo.com.hk",
                "tel" => "68391024"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lantaublue/posts/2419839294761423"
        }
    ];
}

