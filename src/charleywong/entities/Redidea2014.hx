package charleywong.entities;

class Redidea2014 implements Entity {
    public final id = "redidea2014";
    public final name = [
        en => "Red Idea",
        zh => "紅煮意"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/redidea2014/",
            meta: [
                "id" => "636457866440586",
                "about" => "歡迎光臨!\n歡迎訂座&包場!!\n...\n\n\n\n\nSee more",
                "categories" => [
                    "European restaurant",
                    "Modern European restaurant",
                    "Event planner"
                ],
                "addr" => "油麻地新填地街151號俊逸豪園1樓B室後座 (眾坊街入口/近百老匯電影中心)",
                "area" => "Hong Kong",
                "email" => "redideacafe@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/redidea2014/videos/449512369061341/"
        },
        {
            url: "https://www.facebook.com/redidea2014/photos/a.636801096406263/2362644003821955/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

