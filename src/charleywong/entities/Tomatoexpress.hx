package charleywong.entities;

class Tomatoexpress implements Entity {
    public final id = "tomatoexpress";
    public final name = [
        zh => "茄姐去那兒！",
        en => "Tomato Express"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://tomatoexp.blogspot.hk"
        },
        {
            url: "https://www.facebook.com/tomatoexpress/",
            meta: [
                "id" => "1538934319769245",
                "about" => "去旅行唔係夢，一個月飛一次其實你都做得到！小編茄姐介紹全新嘅旅遊同購物體驗俾大家，are you ready?",
                "categories" => [
                    "Travel company"
                ],
                "email" => "tomatoexp@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tomatoexpress/posts/2392995831029752"
        }
    ];
    public final tags:Array<Tag> = [];
}

