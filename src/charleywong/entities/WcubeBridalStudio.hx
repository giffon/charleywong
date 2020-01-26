package charleywong.entities;

class WcubeBridalStudio implements Entity {
    public final id = "wcubebridalstudio";
    public final name = [
        en => "Wcube Bridal Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://wcubestudio.com"
        },
        {
            url: "https://www.facebook.com/wcubebridalstudio/",
            meta: [
                "id" => "248747348665468",
                "about" => "We deliver excellent rental and tailor-made services of wedding gown and evening gown.",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "新蒲崗大有街32號泰力工業中心11樓10室",
                "area" => "Hong Kong",
                "email" => "studiowcube@gmail.com",
                "tel" => "21210906"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wcubebridalstudio/posts/1238935046313355"
        }
    ];
}

