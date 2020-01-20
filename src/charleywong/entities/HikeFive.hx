package charleywong.entities;

class HikeFive implements Entity {
    public final id = "hikefive.hk";
    public final name = [
        en => "HikeFive"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hikefive.hk/",
            meta: [
                "about" => "HikeFive熱愛自然山野\n\n內容圍繞著露營、行山、山跑、攀石及MYOG 五大方面，提供各種不同的外國山野趣聞，路線及器材運用等資訊",
                "categories" => [
                    "Personal blog",
                    "Outdoor equipment shop"
                ],
                "email" => "info@hikefive.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hikefive.hk/photos/a.1788122741418849/2452655764965540/"
        },
        {
            url: "https://www.facebook.com/hikefive.hk/photos/a.1788122741418849/2445802062317577/"
        },
        {
            url: "https://www.facebook.com/hikefive.hk/photos/a.1788122741418849/2410438199187297/"
        }
    ];
}

