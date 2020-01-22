package charleywong.entities;

class Gloscafefooody implements Entity {
    public final id = "gloscafe.fooody";
    public final name = [
        en => "GLOs Cafe by fooody",
        zh => "伙食工業"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/gloscafe.fooody/",
            meta: [
                "about" => "home cooking,antique,music,coffee",
                "categories" => [
                    "Diner",
                    "Cafe",
                    "Chinese restaurant"
                ],
                "addr" => "Flat 3, G/F, Leader Industrial Centre, 57-59, Au Pui Wan Street, Fo Tan, Shatin",
                "area" => "Hong Kong",
                "email" => "fooodyhk@gmail.com",
                "tel" => "35860863",
                "id" => "1434589716758125"
            ]
        },
        {
            url: "https://www.instagram.com/gloscafe_fooody/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gloscafe.fooody/posts/2467337256816694"
        },
        {
            url: "https://www.facebook.com/gloscafe.fooody/posts/2501353983415021"
        }
    ];
}

