package charleywong.entities;

class Peihocounterparts implements Entity {
    public final id = "peihocounterparts";
    public final name = [
        zh => "北河同行"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://peiho.hk"
        },
        {
            url: "https://www.facebook.com/peihocounterparts/",
            meta: [
                "id" => "1497911200447894",
                "about" => "本專頁為深水埗明哥～陳灼明、北河燒臘飯店發放，及記載活動消息之官方專頁。\n同時，亦供籌辦活動時招募義工之用。\n\n關顧行動的持續及穩定發展，有頼有心人士的支持及參與。",
                "categories" => [
                    "Community"
                ],
                "email" => "info@peiho.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/peihocounterparts/photos/a.1513686175537063/2504724906433180/"
        },
        {
            url: "https://www.facebook.com/peihocounterparts/posts/2378033062435699"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

