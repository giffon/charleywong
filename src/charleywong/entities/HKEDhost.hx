package charleywong.entities;

class HKEDhost implements Entity {
    public final id = "HKEDhost";
    public final name = [
        zh => "東道主"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKEDhost/",
            meta: [
                "id" => "1048562575191144",
                "categories" => [
                    "Community",
                    "Editorial/Opinion"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKEDhost/posts/2671384536242265"
        },
        {
            url: "https://www.facebook.com/HKEDhost/posts/2643022312411821"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

