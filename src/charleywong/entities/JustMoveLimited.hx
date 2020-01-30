package charleywong.entities;

class JustMoveLimited implements Entity {
    public final id = "justmove.hk";
    public final name = [
        en => "Just Move Limited"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/justmove.hk/",
            meta: [
                "about" => "We never stop, we Just Move!",
                "categories" => [
                    "Internet company"
                ],
                "email" => "info@justmove.com.hk",
                "tel" => "31114122",
                "id" => "281218782271462"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/justmove.hk/posts/855057561554245"
        }
    ];
    public final tags:Array<Tag> = [
        technology,
        shop
    ];
}

