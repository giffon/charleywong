package charleywong.entities;

class IcaruSaxoStudio implements Entity {
    public final id = "Icarusaxo";
    public final name = [
        en => "Icaru Saxo Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.saxophonelesson.hk"
        },
        {
            url: "https://www.facebook.com/Icarusaxo/",
            meta: [
                "id" => "146012472254293",
                "about" => "Saxophone Group Lesson\n班制 3-4人課程\n詳情：http://www.saxophonelesson.hk/saxophone-group-lessons-91257575.html",
                "categories" => [
                    "Personal blog",
                    "Music school",
                    "Education website"
                ],
                "email" => "icarusaxo@yahoo.com",
                "tel" => "91257575"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Icarusaxo/posts/1163117493877114"
        },
        {
            url: "https://www.facebook.com/Icarusaxo/videos/247223982851558/"
        }
    ];
    public final tags:Array<Tag> = [];
}

