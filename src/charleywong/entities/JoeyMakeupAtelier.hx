package charleywong.entities;

class JoeyMakeupAtelier implements Entity {
    public final id = "joeymakeupatelier";
    public final name = [
        en => "Joey Makeup Atelier"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/joeymakeupatelier/",
            meta: [
                "id" => "150324595317906",
                "about" => "Joey Makeup Atelier\nProvides professional makeup & hair styling service\nEmail: joeymakeupatelier@gmail.com\nWhatsapp: 51286878",
                "categories" => [
                    "Health/beauty"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/joeymakeupatelier/posts/993972807619743"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding
    ];
}

