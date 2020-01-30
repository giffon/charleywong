package charleywong.entities;

class Hennabyrita implements Entity {
    public final id = "438821806164777";
    public final name = [
        en => "henna by rita"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/438821806164777/",
            meta: [
                "about" => "henna, mehndi,\nlefty,\nHong Kong",
                "categories" => [
                    "Artist"
                ],
                "id" => "438821806164777"
            ]
        },
        {
            url: "https://www.instagram.com/hennabyrita/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/438821806164777/photos/a.751762801537341/2564964183550518/"
        },
        {
            url: "https://www.facebook.com/438821806164777/photos/a.751762801537341/2339796582733947/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist
    ];
}

