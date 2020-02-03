package charleywong.entities;

class Dikdakhazel implements Entity {
    public final id = "dikdakhazel";
    public final name = [
        zh => "榛子",
        en => "DikDak"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dikdakhazel/",
            meta: [
                "id" => "2302136573356633",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dikdakhazel/photos/a.2302812166622407/2488456564724632/"
        },
        {
            url: "https://www.facebook.com/dikdakhazel/photos/a.2312971182273172/2428303697406586/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

