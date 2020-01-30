package charleywong.entities;

class LamBBHK implements Entity {
    public final id = "lambbhk";
    public final name = [
        en => "LamBBHK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/lambbhk/",
            meta: [
                "id" => "1002096356488228",
                "about" => "LamBBHK\n\n網上小生意\n請多多支持，唔買都幫手Like ^。^",
                "categories" => [
                    "Shopping & retail"
                ],
                "addr" => "Hong Kong",
                "area" => "Tai-Po-Hui, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lambbhk/posts/2811100715587774"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

