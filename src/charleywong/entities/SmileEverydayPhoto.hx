package charleywong.entities;

class SmileEverydayPhoto implements Entity {
    public final id = "smileeverydayphoto";
    public final name = [
        en => "Smile Everyday Photo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.smile-everyday-photo.com"
        },
        {
            url: "https://www.facebook.com/smileeverydayphoto/",
            meta: [
                "id" => "358980787554207",
                "about" => "Smile Everyday Photo 作為優質商戶之一，是你的信心之選, 絕不隱含收費, 誠意以優質攝影打動你。",
                "categories" => [
                    "Photographer",
                    "Makeup artist"
                ],
                "email" => "hello@smile-everyday-photo.com",
                "tel" => "63248820"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/smileeverydayphoto/posts/2524868204298777"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

