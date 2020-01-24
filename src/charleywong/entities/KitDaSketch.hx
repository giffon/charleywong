package charleywong.entities;

class KitDaSketch implements Entity {
    public final id = "KitDaSketch";
    public final name = [
        en => "Kit Da Sketch"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.kickasstype.hk/shop/?orderby=date"
        },
        {
            url: "https://www.facebook.com/KitDaSketch/",
            meta: [
                "id" => "375994382535961",
                "about" => "KITMAN，三字頭中坑一枚，最憎不義之事。本業多媒體製作，由設計到編程一手包辦，寫APP寫GAME寫現場互動。16年成功籌旗製作勁揪體，18年完成並舉辦首個個人展覽。\ninquiry: info@kitdastudio.com",
                "categories" => [
                    "Artist",
                    "Art gallery",
                    "Residence"
                ],
                "email" => "kickasstype@kitdastudio.com"
            ]
        },
        {
            url: "https://www.instagram.com/kitdastudioisback/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KitDaSketch/photos/a.375994989202567/1730085280460191/"
        },
        {
            url: "https://www.facebook.com/KitDaSketch/posts/1717614381707281"
        },
        {
            url: "https://www.facebook.com/KitDaSketch/posts/1688468587955194"
        }
    ];
}

