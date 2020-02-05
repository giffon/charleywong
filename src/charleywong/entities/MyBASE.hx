package charleywong.entities;

class MyBASE implements Entity {
    public final id = "mybasehk";
    public final name = [
        en => "MyBASE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mybase.com.hk"
        },
        {
            url: "https://www.facebook.com/mybasehk/",
            meta: [
                "id" => "1819023728397960",
                "about" => "旺角 | 大型共享自修空間\n工作 | 自修 | 休閒 | 閱讀 | 活動\n...\n\n\nSee more",
                "categories" => [
                    "Local service",
                    "Tea room"
                ],
                "email" => "contact@mybase.com.hk",
                "tel" => "59162182"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mybasehk/posts/2323992041234457"
        },
        {
            url: "https://www.facebook.com/mybasehk/posts/2261825964117732"
        },
        {
            url: "https://www.facebook.com/mybasehk/photos/a.1820687494898250/2250652068568455/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

