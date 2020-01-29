package charleywong.entities;

class Shizukohandmade implements Entity {
    public final id = "shizukohandmade";
    public final name = [
        zh => "静子手芸所",
        en => "Shizuko Handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shizukohandmade/",
            meta: [
                "about" => "Shizuko Handmade (静子手芸所) design concept is inspired by Japanese aesthetics\n\nKanso 【簡素】 Simplicity...\n\n\n\nSee more",
                "categories" => [
                    "Jewellery & watches shop",
                    "Jewellery wholesaler"
                ],
                "email" => "shizukohandmade@gmail.com",
                "tel" => "54934751",
                "id" => "476764966006823"
            ]
        },
        {
            url: "https://www.instagram.com/shizukohandmade/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shizukohandmade/photos/a.496699804013339/1055806648102649/"
        }
    ];
    public final tags:Array<Tag> = [];
}

