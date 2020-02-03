package charleywong.entities;

class CourageousHongKonger implements Entity {
    public final id = "CourageousHker";
    public final name = [
        en => "Courageous HongKonger"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CourageousHker/",
            meta: [
                "id" => "113306763538881",
                "categories" => [
                    "Grocers"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CourageousHker/posts/121538629382361"
        },
        {
            url: "https://www.facebook.com/CourageousHker/photos/a.113647743504783/121375566065334/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

