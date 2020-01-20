package charleywong.entities;

class SomethingSomething implements Entity {
    public final id = "BigYcomic";
    public final name = [
        en => "Something Something"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BigYcomic/",
            meta: [
                "about" => "以日常的搞笑事為主題。每週會更新兩至三則漫畫。\n\n歡迎任何合作機會:...\n\n\nSee more",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "bigycomic@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BigYcomic/photos/a.297017700439510/1536327983175136/"
        },
        {
            url: "https://www.facebook.com/BigYcomic/photos/a.297017700439510/434914236649855/"
        }
    ];
}

