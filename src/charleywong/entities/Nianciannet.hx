package charleywong.entities;

class Nianciannet implements Entity {
    public final id = "niancian.net";
    public final name = [
        zh => "念慈庵",
        en => "NianCiAn"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/niancian.net/",
            meta: [
                "about" => "陳年運動休閒網站",
                "categories" => [
                    "Recreation & sport website"
                ],
                "email" => "info@niancian.net",
                "id" => "272715056176793"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/niancian.net/photos/a.1400912990023655/2313982732050005/"
        }
    ];
    public final tags:Array<Tag> = [];
}

