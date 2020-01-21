package charleywong.entities;

class GoodNeighbournd implements Entity {
    public final id = "GoodNeighbournd";
    public final name = [
        zh => "好鄰舍北區教會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/GoodNeighbournd/",
            meta: [
                "about" => "北區會址： 粉嶺聯和墟聯發街32號地鋪\n北區週六晚堂︰逢星期六 4:30PM-6:00PM成人崇拜\n北區週日早堂：逢星期日11：00am-12：30pm\n\n九龍週日：逢星期日11am-12：30pm",
                "categories" => [
                    "Religious organisation",
                    "Christian church"
                ],
                "email" => "goodneighbournd@gmail.com",
                "tel" => "28062766"
            ]
        },
        {
            url: "https://www.instagram.com/ndneighbourchurch/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/GoodNeighbournd/photos/a.1563622323932137/2174783506149346/"
        }
    ];
}

