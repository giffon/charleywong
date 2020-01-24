package charleywong.entities;

class JulyJulyDream implements Entity {
    public final id = "JulyJulyDream";
    public final name = [
        en => "July July Dream"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.julyjulydream.com"
        },
        {
            url: "https://www.facebook.com/JulyJulyDream/",
            meta: [
                "id" => "200653743391957",
                "about" => "We made jewelry for Each is Unique.",
                "categories" => [
                    "Jewellery/watches"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JulyJulyDream/posts/1381525461971440"
        },
        {
            url: "https://www.facebook.com/JulyJulyDream/photos/a.209441379179860/1447606568696662/"
        }
    ];
}

