package charleywong.entities;

class SumSiuBarNGrill implements Entity {
    public final id = "SumSiuBarNGrill";
    public final name = [
        zh => "心燒食堂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.openrice.com/zh/hongkong/r-心燒食堂-銅鑼灣-日本菜-串燒-r117340"
        },
        {
            url: "https://www.facebook.com/SumSiuBarNGrill/",
            meta: [
                "id" => "292665697516783",
                "about" => "我們是一間以串燒為主的食堂，更是一間畫廊！",
                "categories" => [
                    "Asian fusion restaurant",
                    "Diner",
                    "Japanese restaurant"
                ],
                "addr" => "香港銅鑼灣駱克道487號駱克駅22-23樓 L\'Hart 22-23/F, 487 Lockhart road, Causeway Bay, Hong Kong",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SumSiuBarNGrill/posts/2311833478933318"
        },
        {
            url: "https://www.facebook.com/SumSiuBarNGrill/photos/a.392212874228731/2251397664976900/"
        },
        {
            url: "https://www.facebook.com/SumSiuBarNGrill/photos/a.392212874228731/2175003652616302/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

