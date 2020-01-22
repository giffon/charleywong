package charleywong.entities;

class Inkolize implements Entity {
    public final id = "inkolize";
    public final name = [
        zh => "墨指工作室",
        en => "inkolize"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.inkolize.com/"
        },
        {
            url: "https://www.facebook.com/inkolize/",
            meta: [
                "about" => "Embrace the joy and pain of hand printing.",
                "categories" => [
                    "Product/service"
                ],
                "email" => "hi@inkolize.com",
                "id" => "149153385423812"
            ]
        },
        {
            url: "https://www.instagram.com/inkolize/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B5Nqm8IBcc1/"
        },
        {
            url: "https://www.facebook.com/inkolize/posts/911373969201746"
        }
    ];
}

