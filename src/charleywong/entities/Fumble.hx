package charleywong.entities;

class Fumble implements Entity {
    public final id = "fumble2012";
    public final name = [
        en => "Fumble"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.fumble.com.hk"
        },
        {
            url: "https://www.facebook.com/fumble2012/",
            meta: [
                "id" => "589794107714515",
                "about" => "玩味．質素．態度\n\nLife is dear, Love is dearer. Without \"Fumble\", what are We living for?",
                "categories" => [
                    "Clothes shop"
                ],
                "email" => "fumblehk@gmail.com",
                "tel" => "66729476"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fumble2012/videos/2342345055873130/"
        },
        {
            url: "https://www.facebook.com/fumble2012/photos/a.619892434704682/2994132437280658/"
        },
        {
            url: "https://www.facebook.com/fumble2012/photos/a.619892434704682/2937666869593882/"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}

