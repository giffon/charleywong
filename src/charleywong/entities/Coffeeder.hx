package charleywong.entities;

class Coffeeder implements Entity {
    public final id = "coffeeder";
    public final name = [
        zh => "啡聞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coffeeder/",
            meta: [
                "about" => "「啡聞」正式成立於2018年,由前身首個香港咖啡網誌《啡聞遊記》衍生出來的咖啡媒體。透過咖啡人、事、物，把香港咖啡文化普及和融入在日常生活中。\n「啡聞」-以期刊形式出版。",
                "categories" => [
                    "Magazine"
                ],
                "email" => "coffeederhk@gmail.com",
                "tel" => "55717267",
                "id" => "288339544656362"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coffeeder/posts/1306455339511439"
        },
        {
            url: "https://www.facebook.com/coffeeder/posts/1301780499978923"
        },
        {
            url: "https://www.facebook.com/coffeeder/photos/a.443230465833935/1269325546557752/"
        }
    ];
}

