package charleywong.entities;

class BrosFruit implements Entity {
    public final id = "BrosFruit";
    public final name = [
        zh => "巴打鮮菓"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/BrosFruit/",
            meta: [
                "id" => "278840489631967",
                "about" => "為香港人帶來唔同世界各地既新鮮水菓",
                "categories" => [
                    "Merchandising service"
                ],
                "addr" => "葵涌",
                "area" => "Hong Kong",
                "tel" => "92051314"
            ]
        },
        {
            url: "https://www.instagram.com/brosfruit/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BrosFruit/posts/567956814053665"
        },
        {
            url: "https://www.facebook.com/BrosFruit/photos/a.390562715126410/564470914402255/"
        },
        {
            url: "https://www.facebook.com/BrosFruit/posts/507296120119735"
        }
    ];
    public final tags:Array<Tag> = [];
}

