package charleywong.entities;

class Kuugatoys implements Entity {
    public final id = "Kuugatoys";
    public final name = [
        zh => "古迦玩具",
        en => "Kuugatoys"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Kuugatoys/",
            meta: [
                "about" => "油麻地現時點2樓230室\n主要銷售日本動漫產品及網上(日本)代購",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "kuugatoys@yahoo.com.hk",
                "id" => "127295004039286"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Kuugatoys/posts/2206002679501831"
        },
        {
            url: "https://www.facebook.com/Kuugatoys/photos/a.402494463186004/2179089072193192"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

