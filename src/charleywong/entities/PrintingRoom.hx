package charleywong.entities;

class PrintingRoom implements Entity {
    public final id = "printingroomhk";
    public final name = [
        en => "Printing Room"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/printingroomhk/",
            meta: [
                "id" => "791637067568643",
                "about" => "Small print for big ideas.",
                "categories" => [
                    "Printing service"
                ],
                "addr" => "觀塘 駿業里 世貿大樓 10樓 7室",
                "area" => "Hong Kong",
                "email" => "printingroomhk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/printingroomhk/posts/2727228364009494"
        },
        {
            url: "https://www.facebook.com/printingroomhk/posts/2801028406629489"
        },
        {
            url: "https://www.facebook.com/printingroomhk/posts/2744644302267900"
        }
    ];
    public final tags:Array<Tag> = [
        printing
    ];
}

