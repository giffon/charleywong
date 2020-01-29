package charleywong.entities;

class HongKongPegasus implements Entity {
    public final id = "HongKongPegasus";
    public final name = [
        zh => "飛馬電腦",
        en => "Pegasus"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://shop.pegasus.hk"
        },
        {
            url: "https://www.facebook.com/HongKongPegasus/",
            meta: [
                "categories" => [
                    "Computer Company",
                    "Computers (Brand)",
                    "Computer Store"
                ],
                "addr" => "荔枝角青山道505號通源工業大廈9樓A室",
                "area" => "Lai Chi Kok",
                "email" => "info@pegasus.hk",
                "tel" => "67924078",
                "id" => "314622325626313"
            ]
        },
        {
            url: "https://www.instagram.com/pegasus.hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HongKongPegasus/posts/688365781585297"
        },
        {
            url: "https://www.facebook.com/HongKongPegasus/posts/800512053704002"
        }
    ];
    public final tags:Array<Tag> = [];
}

