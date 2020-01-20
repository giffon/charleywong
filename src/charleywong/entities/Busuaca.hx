package charleywong.entities;

class Busuaca implements Entity {
    public final id = "Busuaca";
    public final name = [
        zh => "浸會大學動漫學會"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Busuaca/",
            meta: [
                "about" => "這裡是浸會大學動漫藝術研究學會的facebook page，會為大家發放我們的活動資訊以及各項動態，歡迎大家like同多多關注！",
                "categories" => [
                    "Organisation"
                ],
                "addr" => "YSS701, Yeung Shui Sang Building, Ho Sin Hang Campus, Hong Kong Baptist University, 224 Waterloo Road",
                "area" => "Kowloon, Hong Kong",
                "email" => "manrakucho.hkbuacas@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/hkbuaca/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Busuaca/photos/a.229599480551163/1234698466707921/"
        },
        {
            url: "https://www.facebook.com/Busuaca/posts/1283048305206270"
        }
    ];
}

