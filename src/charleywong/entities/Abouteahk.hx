package charleywong.entities;

class Abouteahk implements Entity {
    public final id = "abouteahk";
    public final name = [
        zh => "花斑茶社",
        en => "Aboutea"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/abouteahk/",
            meta: [
                "id" => "459558104452858",
                "categories" => [
                    "Product/service"
                ],
                "tel" => "84811174"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/abouteahk/posts/702749903467009"
        },
        {
            url: "https://www.facebook.com/abouteahk/photos/a.567813613627306/761885990886733/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

