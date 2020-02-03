package charleywong.entities;

class Bigwuly implements Entity {
    public final id = "bigwuly";
    public final name = [
        zh => "大柴狐"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bigwuly/",
            meta: [
                "id" => "2274459506170258",
                "about" => "城市裡\n星空都被慾望掩蓋\n倚靠著文字與線條...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bigwuly/photos/a.2274504836165725/2466791636937043/"
        },
        {
            url: "https://www.facebook.com/bigwuly/photos/a.2274504836165725/2470133186602888/"
        },
        {
            url: "https://www.facebook.com/bigwuly/photos/a.2274504836165725/2397619680520906/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

