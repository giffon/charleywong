package charleywong.entities;

class Yummycartnoodles implements Entity {
    public final id = "yummycartnoodles";
    public final name = [
        zh => "任你點車仔麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.yummycart-group.com"
        },
        {
            url: "https://www.facebook.com/yummycartnoodles/",
            meta: [
                "id" => "129398374404427",
                "categories" => [
                    "Deli",
                    "Fast food restaurant",
                    "Diner"
                ],
                "addr" => "香港九龍深水埗福華街147號地下",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yummycartnoodles/posts/446147502729511"
        },
        {
            url: "https://www.facebook.com/yummycartnoodles/photos/a.129771484367116/441551513189110/"
        },
        {
            url: "https://www.facebook.com/yummycartnoodles/posts/436343780376550"
        }
    ];
}

