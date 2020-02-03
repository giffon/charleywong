package charleywong.entities;

class Together implements Entity {
    public final id = "togetherasia";
    public final name = [
        en => "Together"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.togetherasia.com"
        },
        {
            url: "https://www.facebook.com/togetherasia/",
            meta: [
                "id" => "179310962122753",
                "about" => "All about love\nOnline Shop : http://www.humantouch.hk",
                "categories" => [
                    "Home decor"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/togetherasia/photos/a.179324115454771/2351522611568233/"
        },
        {
            url: "https://www.facebook.com/togetherasia/photos/a.179324115454771/2260325390687956/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

