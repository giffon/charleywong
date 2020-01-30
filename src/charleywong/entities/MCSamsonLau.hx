package charleywong.entities;

class MCSamsonLau implements Entity {
    public final id = "MCSamsonLau";
    public final name = [
        en => "MC Samson Lau"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://mcsamsonlau.wordpress.com"
        },
        {
            url: "https://www.facebook.com/MCSamsonLau/",
            meta: [
                "id" => "458030464227863",
                "about" => "MC Samson 特色: 超過350場婚宴經驗、2文3語(廣東話、普通話、英語)、鋼琴伴奏、細心、重溝通 :)\n篇幅有限, 詳情請到我的Blog:\nhttps://mcsamsonlau.wordpress.com/",
                "categories" => [
                    "Artist"
                ],
                "email" => "mcsamsonlau@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MCSamsonLau/photos/a.671546846209556/2782885515075668/"
        }
    ];
    public final tags:Array<Tag> = [
        emcee,
        wedding
    ];
}

