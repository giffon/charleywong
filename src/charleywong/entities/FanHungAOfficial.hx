package charleywong.entities;

class FanHungAOfficial implements Entity {
    public final id = "FanHungAOfficial";
    public final name = [
        zh => "粉紅A"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FanHungAOfficial/",
            meta: [
                "about" =>
                "香港獨立樂隊粉紅A，相隔13年，推出第四張專輯《為藝術犧牲》。\n\nHong Kong indie band Fan Hung A has released its 4th album, \"To Die for Art\", after a 13-year haitus.",
                "categories" => [
                    "Band",
                    "Musician"
                ],
                "email" => "fanhunga@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/fanhunga/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FanHungAOfficial/photos/a.447811495581514/843870569308936/"
        },
        {
            url: "https://www.facebook.com/FanHungAOfficial/posts/909847302711262"
        },
        {
            url: "https://www.facebook.com/FanHungAOfficial/photos/a.447811495581514/894616097567716/"
        }
    ];
}

