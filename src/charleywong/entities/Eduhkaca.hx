package charleywong.entities;

class Eduhkaca implements Entity {
    public final id = "eduhkaca";
    public final name = [
        zh => "香港教育大學學生會屬會動漫學會",
        en => "Animation and Comics Association, Eduhksu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/eduhkaca/",
            meta: [
                "about" => "The EdUHK 8th Animation and Comics Association (ACA) - AniToxic\n香港教育大學學生會屬會第八屆動漫學會 漫性中毒AniToxic",
                "categories" => [
                    "Community"
                ],
                "id" => "280897418724924"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eduhkaca/photos/a.287522008062465/1361527263995262/"
        }
    ];
    public final tags:Array<Tag> = [];
}

