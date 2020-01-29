package charleywong.entities;

class Artfeelingproduction implements Entity {
    public final id = "Artfeeling";
    public final name = [
        en => "Artfeeling production"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.artfeelingproduction.com"
        },
        {
            url: "https://www.facebook.com/Artfeeling/",
            meta: [
                "id" => "182695961769198",
                "about" => "提供專業攝影服務！",
                "categories" => [
                    "Business service"
                ],
                "addr" => "觀塘 成業街",
                "area" => "Hong Kong",
                "email" => "info@artfeelingproduction.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Artfeeling/photos/a.591856360853154/2622069897831780/"
        }
    ];
    public final tags:Array<Tag> = [];
}

