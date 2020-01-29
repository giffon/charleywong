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
                "email" => "jclassymakeup@gmail.com",
                "id" => "180888471959619"
            ]
        },
        {
            url: "https://www.instagram.com/jclassymakeup/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jclassymakeup/posts/2555280094520433"
        }
    ];
    public final tags:Array<Tag> = [];
}

