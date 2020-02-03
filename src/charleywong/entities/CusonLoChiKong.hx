package charleywong.entities;

class CusonLoChiKong implements Entity {
    public final id = "Cuson.LoChiKong";
    public final name = [
        zh => "怪叔叔の散步道"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Cuson.LoChiKong/",
            meta: [
                "about" => "鍾意周街逛的漫畫家大叔。",
                "categories" => [
                    "Writer"
                ],
                "email" => "cusonlo@gmail.com",
                "id" => "1598771346881547"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Cuson.LoChiKong/posts/2647327968692541"
        },
        {
            url: "https://www.facebook.com/Cuson.LoChiKong/photos/a.1599762766782405/2353448974747110/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

