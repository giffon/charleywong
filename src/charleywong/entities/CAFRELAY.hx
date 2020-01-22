package charleywong.entities;

class CAFRELAY implements Entity {
    public final id = "caferelay";
    public final name = [
        en => "CAFÉ RELAY"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/caferelay/",
            meta: [
                "about" => "星期六、日及公眾假期，不設訂座服務！",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "G/F., No. 3 Ming Yan Lane, Tai Wong Street East, Wan Chai",
                "area" => "Hong Kong",
                "email" => "caferelay@gmail.com",
                "tel" => "28276366",
                "id" => "994300107337460"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/caferelay/photos/a.994319680668836/2220874998013292/"
        },
        {
            url: "https://www.facebook.com/caferelay/photos/a.994319680668836/1935079429926185/"
        }
    ];
}

