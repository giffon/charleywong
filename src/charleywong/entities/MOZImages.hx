package charleywong.entities;

class MOZImages implements Entity {
    public final id = "MOZimages";
    public final name = [
        en => "MOZ Images"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.moz.com.hk"
        },
        {
            url: "https://www.facebook.com/MOZimages/",
            meta: [
                "id" => "108785329289709",
                "about" =>
                "Fashion, Portraiture, DocumentaryMoz Images - Will Stand the test of time.Please contact +852 9050 5009 / hihimoses@gmail.com for any booking.",
                "categories" => [
                    "Company"
                ],
                "email" => "info.mozimages@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MOZimages/photos/a.130726233762285/1433321040169458/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer
    ];
}

