package charleywong.entities;

class DANCELIFESTYLEHONGKONG implements Entity {
    public final id = "dancelifestylehk";
    public final name = [
        en => "DANCE LIFESTYLE HONG KONG"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dancelifestylehk/",
            meta: [
                "id" => "308325959292322",
                "about" =>
                "DL was created because of amazing dancers who passionate about dancing.Lets show to the world that Hongkong can inspire and share their artistry.",
                "categories" => [
                    "Dance studio",
                    "Dancer"
                ],
                "addr" =>
                "Workshop 1701, 17/F, Hewlett Centre, 52-54 Hoi Yuen Road, Kwun Tong, Kowloon (Kwun Tong MTR station B1 entrance, around 5 mins walk) / 九龍觀塘開源道54號豐利中心17樓1701室 (觀塘地鐵站B1出口，步行約5分鐘)",
                "area" => "Kwun Tong",
                "email" => "dancelifestyle.hk@gmail.com",
                "tel" => "59280730"
            ]
        },
        {
            url: "https://www.instagram.com/dance_lifestyle_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dancelifestylehk/videos/612247916179603/"
        },
        {
            url: "https://www.instagram.com/p/B2rAvCkApm6/"
        }
    ];
    public final tags:Array<Tag> = [];
}

