package charleywong.entities;

class Ngautrip implements Entity {
    public final id = "ngautrip";
    public final name = [
        zh => "牛遊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ngautrip/",
            meta: [
                "id" => "964832620203190",
                "about" => "《牛遊》",
                "categories" => [
                    "Organisation"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ngautrip/photos/a.968519756501143/2858613154158451/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

