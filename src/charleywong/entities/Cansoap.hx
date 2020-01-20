package charleywong.entities;

class Cansoap implements Entity {
    public final id = "cansoap";
    public final name = [
        zh => "簡梘"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/cansoap/",
            meta: [
                "about" => "愛。生活。地球",
                "categories" => [
                    "Product/service"
                ],
                "email" => "cansoaphk@gmail.com",
                "tel" => "35951757"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/cansoap/photos/a.408548439206339/2622591674468660/"
        },
        {
            url: "https://www.facebook.com/cansoap/posts/2511667448894417"
        },
        {
            url: "https://www.facebook.com/cansoap/posts/2398190580242105"
        }
    ];
}

