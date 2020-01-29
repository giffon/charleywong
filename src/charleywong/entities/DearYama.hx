package charleywong.entities;

class DearYama implements Entity {
    public final id = "dearyama2016";
    public final name = [
        en => "Dear Yama"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dearyama2016/",
            meta: [
                "categories" => [
                    "Sports",
                    "Community"
                ],
                "email" => "dearyama2016@gmail.com",
                "id" => "1154831901221862"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dearyama2016/posts/2402886403083066"
        },
        {
            url: "https://www.facebook.com/dearyama2016/posts/2548071698564535"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

