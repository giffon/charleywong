package charleywong.entities;

class Giantstiedye implements Entity {
    public final id = "giantstiedye";
    public final name = [
        zh => "巨人染",
        en => "Giants Tie Dye"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/giantstiedye/",
            meta: [
                "about" => "巨 人 染 Giants Tie Dye的手染基地，\n我們是來自台灣和香港的紮染技藝師。\n...\n\n\n\nSee more",
                "categories" => [
                    "Artist"
                ],
                "email" => "giantstiedye@gmail.com",
                "id" => "884321768271017"
            ]
        },
        {
            url: "https://www.instagram.com/giants_tiedye/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/giantstiedye/photos/a.886592474710613/2642566329113210/"
        },
        {
            url: "https://www.facebook.com/giantstiedye/posts/2627036180666225"
        },
        {
            url: "https://www.facebook.com/giantstiedye/photos/a.886592474710613/2561853697184474/"
        }
    ];
    public final tags:Array<Tag> = [];
}

