package charleywong.entities;

class Kowloonsingjai implements Entity {
    public final id = "kowloonsingjai";
    public final name = [
        zh => "城寨"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://singjai.hk"
        },
        {
            url: "https://www.facebook.com/kowloonsingjai/",
            meta: [
                "id" => "642515382497502",
                "about" => "PayPal 課金: http://www.singjai.hk/donation\nFPS : 2629640 Kxxxx Cxxxxx Wxxx Sxxx\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Radio station",
                    "Broadcasting & media production company"
                ],
                "email" => "kowloonsingjai@gmail.com",
                "tel" => "25121002"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kowloonsingjai/posts/2649548241794196"
        },
        {
            url: "https://www.facebook.com/kowloonsingjai/posts/2485255088223513"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        organization
    ];
}

