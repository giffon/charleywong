package charleywong.entities;

class UglyFamily implements Entity {
    public final id = "hahaX1000";
    public final name = [
        zh => "醜人多八怪",
        en => "Ugly Family"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hahaX1000/",
            meta: [
                "about" => "醜人，為世界帶來美好。\nIG: ugly_family",
                "categories" => [
                    "Artist"
                ],
                "id" => "1467558473481733"
            ]
        },
        {
            url: "https://www.instagram.com/ugly_family/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hahaX1000/photos/a.1467563606814553/2582475911989978/"
        },
        {
            url: "https://www.facebook.com/hahaX1000/photos/a.1467563606814553/2435063210064583/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

