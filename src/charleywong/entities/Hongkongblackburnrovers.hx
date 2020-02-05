package charleywong.entities;

class Hongkongblackburnrovers implements Entity {
    public final id = "hongkongblackburnrovers";
    public final name = [
        zh => "香港布力般流浪球迷專頁",
        en => "Hong Kong Blackburn Rovers Supporters Club"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.rovers.co.uk"
        },
        {
            url: "https://www.facebook.com/hongkongblackburnrovers/",
            meta: [
                "id" => "1531079353704873",
                "about" => "本專頁主要轉發布力般流浪最新資訊，轉會消息，賽事情報，球員專訪，以及香港布迷睇布力般既種種回憶\n我們亦會舉行球迷睇波聚會同埋踢波活動\n捧過英超 降過英甲 起起跌跌仍然撐\nRTWD 💙",
                "categories" => [
                    "Amateur sports team"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hongkongblackburnrovers/posts/1732244663588340"
        },
        {
            url: "https://www.facebook.com/hongkongblackburnrovers/posts/1831022087043930"
        }
    ];
    public final tags:Array<Tag> = [
        sport,
        media
    ];
}

