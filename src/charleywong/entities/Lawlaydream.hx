package charleywong.entities;

class Lawlaydream implements Entity {
    public final id = "lawlaydream";
    public final name = [
        zh => "法夢"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lawlaydream/",
            meta: [
                "id" => "625334667649883",
                "about" => "我們相信法治、人權、公平審訊、人人平等；因為這一切一切都成就著今天你我她和他的生活。",
                "categories" => [
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lawlaydream/posts/1307594996090510"
        },
        {
            url: "https://www.facebook.com/lawlaydream/photos/a.625475004302516/1281078658742144/"
        }
    ];
    public final tags:Array<Tag> = [
        organization,
        media
    ];
}

