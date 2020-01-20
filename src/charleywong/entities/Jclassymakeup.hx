package charleywong.entities;

class Jclassymakeup implements Entity {
    public final id = "jclassymakeup";
    public final name = [
        en => "J\'Classy Makeup Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jclassymakeup/",
            meta: [
                "about" => "J\'Classy Makeup Studio",
                "categories" => [
                    "Makeup artist"
                ],
                "addr" => "Koon Fook Centre, 9 Knutsford Terrace,",
                "area" => "Tsim Sha Tsui",
                "email" => "jclassymakeup@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/https%3A%2F%2Fwww.instagram.com%2Fjclassymakeup/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jclassymakeup/posts/2555280094520433"
        }
    ];
}

