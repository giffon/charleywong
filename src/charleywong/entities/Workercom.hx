package charleywong.entities;

class Workercom implements Entity {
    public final id = "workercom";
    public final name = [
        zh => "勞工組"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://t.me/workercom"
        },
        {
            url: "https://www.facebook.com/workercom/",
            meta: [
                "id" => "1076113639215003",
                "about" => "工人唔係話炒就炒\n\n第一條生命線：勞權...\n\n\n\nSee more",
                "categories" => [
                    "Media/news company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/workercom/posts/1273041576188874"
        },
        {
            url: "https://www.facebook.com/workercom/posts/1397042140455483"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

