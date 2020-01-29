package charleywong.entities;

class Cityhowwhy implements Entity {
    public final id = "cityhowwhy";
    public final name = [
        zh => "號外",
        en => "City Magazine"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.cityhowwhy.com.hk"
        },
        {
            url: "https://www.facebook.com/cityhowwhy/",
            meta: [
                "id" => "359064234119",
                "about" => "《號外》官方 FACEBOOK PAGE",
                "categories" => [
                    "Magazine"
                ],
                "email" => "citymagazine@modernmedia.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cityhowwhy/posts/10157550885984120"
        },
        {
            url: "https://www.facebook.com/cityhowwhy/posts/10157962357324120"
        },
        {
            url: "https://www.facebook.com/cityhowwhy/photos/a.10150651726854120/10157733038484120/"
        }
    ];
}

