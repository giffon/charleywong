package charleywong.entities;

class Hongkonghiker implements Entity {
    public final id = "hongkonghiker";
    public final name = [
        zh => "山城縱走",
        en => "hkhiker"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hongkonghiker/",
            meta: [
                "about" => "一群熱愛遠足、尋幽探秘的年輕人，用鏡頭、熱血，搜羅山野間未為人熟知的角落。\n\n有意加入的朋友歡迎FB msg /電郵至hkhiker.info@gmail.com，留下電話與電郵，團長會不定期聯繫更新本團路線。",
                "categories" => [
                    "Society & culture website",
                    "Recreation & sport website"
                ],
                "email" => "hkhiker.info@gmail.com",
                "id" => "923559464400143"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkonghiker/photos/a.970947036328052/2540375542718519/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

