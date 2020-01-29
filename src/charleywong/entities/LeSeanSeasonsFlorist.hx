package charleywong.entities;

class LeSeanSeasonsFlorist implements Entity {
    public final id = "leseanseasons";
    public final name = [
        en => "Le Sean Seasons Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lesean.com.hk"
        },
        {
            url: "https://www.facebook.com/leseanseasons/",
            meta: [
                "id" => "268697843258885",
                "about" => "You taught me to love and to share this love with others!\n\nHong Kong Local Brand & Florist since 2012",
                "categories" => [
                    "Brand"
                ],
                "email" => "info@leseanseasons.com",
                "tel" => "34884003"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leseanseasons/photos/a.276101105851892/2370797146382267/"
        }
    ];
    public final tags:Array<Tag> = [];
}

