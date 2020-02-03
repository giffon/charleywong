package charleywong.entities;

class Bodecommunications implements Entity {
    public final id = "bodecomm";
    public final name = [
        en => "bode communications"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.bode-communications.com.hk"
        },
        {
            url: "https://www.facebook.com/bodecomm/",
            meta: [
                "id" => "265567201308",
                "about" => "We are a creative laboratory. We believe creativity has no boundaries.",
                "categories" => [
                    "Graphic designer",
                    "Advertising agency"
                ],
                "addr" => "Workshop B10, 18/F, Block B, Kailey Industrial Centre, 12 Fung Yip Street, Hong Kong.",
                "area" => "Hong Kong",
                "email" => "paul.chow@bode-communications.com.hk",
                "tel" => "92392874"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bodecomm/posts/10156567837826309"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        technology,
        artist
    ];
}

