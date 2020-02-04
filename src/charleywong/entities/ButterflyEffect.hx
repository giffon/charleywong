package charleywong.entities;

class ButterflyEffect implements Entity {
    public final id = "butterflyeffectinaction";
    public final name = [
        en => "Butterfly Effect"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://bit.do/butterflyeffect-hk"
        },
        {
            url: "https://www.facebook.com/butterflyeffectinaction/",
            meta: [
                "id" => "1788838861405271",
                "about" => "做最美麗的小事，始終相信世界是美好的。\nShall we make our world more beautiful?",
                "categories" => [
                    "Society & culture website"
                ],
                "email" => "butterflyeffect.hk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/butterflyeffectinaction/posts/2372201136402371"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

