package charleywong.entities;

class Shensimon implements Entity {
    public final id = "shensimon";
    public final name = [
        zh => "堅離地城：沈旭暉國際生活台",
        en => "Simon\'s Glos World"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://simonshen.blog"
        },
        {
            url: "https://www.facebook.com/shensimon/",
            meta: [
                "id" => "223783954322429",
                "about" => "閱讀國際關係、喜愛生活品味、遊走不同國度的離地中產，分享衣食住行、電影音樂的國際視野，探討未來國際關係產業化之道。商業合作請聯絡simonshen@glos.world。",
                "categories" => [
                    "Author"
                ],
                "email" => "simonshen@glos.world"
            ]
        },
        {
            url: "https://www.instagram.com/simon.diplomacy/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shensimon/photos/a.224514904249334/2824177187616413/"
        },
        {
            url: "https://www.facebook.com/shensimon/posts/2909857942381670"
        }
    ];
    public final tags:Array<Tag> = [];
}

