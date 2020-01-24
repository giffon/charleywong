package charleywong.entities;

class JumpersFever implements Entity {
    public final id = "JumpersFever";
    public final name = [
        en => "Jumpers Fever",
        zh => "跳蛛狂熱"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JumpersFever/",
            meta: [
                "id" => "164321657409401",
                "about" => "Jumping Spider / Salticidae\n同樣是指跳蛛\n\n本頁旨在推廣及介紹不同跳蛛寵物, 以及其他有趣的蛛類, 節肢類動物, 爬蟲動物",
                "categories" => [
                    "Pet service"
                ],
                "addr" => "旺角通菜街177號1樓",
                "area" => "Hong Kong",
                "email" => "jumpersfever@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JumpersFever/posts/726209251220636"
        }
    ];
}

