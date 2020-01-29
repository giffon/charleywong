package charleywong.entities;

class Bydorisliu implements Entity {
    public final id = "by.dorisliu";
    public final name = [
        en => "by.dorisliu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/by.dorisliu/",
            meta: [
                "about" => "We are not alone in the Universe.\n.\n.\nwww.pinkoi.com/store/bydorisliu",
                "categories" => [
                    "Artist"
                ],
                "id" => "182666918538486"
            ]
        },
        {
            url: "https://www.instagram.com/by.dorisliu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/by.dorisliu/posts/1284234611715039"
        },
        {
            url: "https://www.facebook.com/by.dorisliu/posts/1564840246987806"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

