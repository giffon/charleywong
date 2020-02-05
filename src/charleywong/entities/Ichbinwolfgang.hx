package charleywong.entities;

class Ichbinwolfgang implements Entity {
    public final id = "ichbinwolfgang";
    public final name = [
        zh => "聶威燿中醫師",
        en => "Wolfgang"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ichbinwolfgang/",
            meta: [
                "id" => "227553577942370",
                "about" => "其實中醫與西醫，就好比中文與英文，沒有說甚麼哪一方絕對比另一方更好。中西合參，互相配合，自然就能夠相得益彰，令患者早日康復。",
                "categories" => [
                    "Personal blog",
                    "Medical and health"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ichbinwolfgang/posts/380776145953445"
        },
        {
            url: "https://www.facebook.com/ichbinwolfgang/posts/433313424033050"
        }
    ];
    public final tags:Array<Tag> = [
        medical
    ];
}

