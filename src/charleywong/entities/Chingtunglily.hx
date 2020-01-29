package charleywong.entities;

class Chingtunglily implements Entity {
    public final id = "chingtunglily";
    public final name = [
        en => "Lily Lai",
        zh => "黎靜彤"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chingtunglily/",
            meta: [
                "id" => "1078672798893799",
                "about" => "可以一整天不說話，但不能一天不唱歌\n不愛熱鬧，但享受站在舞台的感覺\n愛聽R&B和Pop Rock\n最愛廣東歌。",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "chingtunglily@gmail.com",
                "tel" => "93705911"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chingtunglily/photos/a.1078711092223303/2702408476520215/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

