package charleywong.entities;

class LadyLibertyHongKong implements Entity {
    public final id = "LadyLibertyHongKong";
    public final name = [
        en => "Lady Liberty HK",
        zh => "香港民主女神"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://ladylibertyhongkong.com"
        },
        {
            url: "https://www.instagram.com/hkladyliberty/"
        },
        {
            url: "https://www.facebook.com/LadyLibertyHongKong/",
            meta: [
                "id" => "101834271203015",
                "about" =>
                "“Lady Liberty Hong Kong” project is a mean to voice out, participate in and contribute to Hong Kong\'s pursuit of democracy under the shadow of autocratic governments through art and design.",
                "categories" => [
                    "Art",
                    "Cause"
                ],
                "email" => "ladylibertyhongkong@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LadyLibertyHongKong/photos/a.104843870902055/118719572847818/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

