package charleywong.entities;

class Teacirclegroup implements Entity {
    public final id = "Teacirclegroup";
    public final name = [
        en => "Royaltea",
        zh => "皇茶"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Teacirclegroup/",
            meta: [
                "id" => "417399898629601",
                "about" => "我們是 Royal Tea HK\n天圓地方茶葉圓尖幼粗枝各有熟地，茂盛滋長。Be a part of the center\n\n將世界各地的好茶帶到香港，創造品茶潮流 ‘Fashion Tea systel’",
                "categories" => [
                    "Bubble tea shop",
                    "Tea room",
                    "Lounge"
                ],
                "addr" => "旺角廣華街1號仁安大廈22號鋪（向登打士街）",
                "area" => "Hong Kong",
                "email" => "teacirclegroup@gmail.com",
                "tel" => "23201333"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Teacirclegroup/posts/1019716111731307"
        },
        {
            url: "https://www.facebook.com/Teacirclegroup/posts/1010271519342433"
        },
        {
            url: "https://www.facebook.com/Teacirclegroup/videos/2533328406953076/"
        }
    ];
    public final tags:Array<Tag> = [];
}

