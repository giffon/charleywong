package charleywong.entities;

class Vipstorey implements Entity {
    public final id = "vipstorey";
    public final name = [
        en => "Vipstorey"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/vipstorey/",
            meta: [
                "about" => "樹熊 Koala",
                "categories" => [
                    "Art",
                    "Artist"
                ],
                "email" => "vipstorey@gmail.com",
                "id" => "310764475954605"
            ]
        },
        {
            url: "https://www.instagram.com/vipstorey/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/vipstorey/posts/1005365743161138"
        },
        {
            url: "https://www.facebook.com/vipstorey/posts/985500571814322"
        }
    ];
}

