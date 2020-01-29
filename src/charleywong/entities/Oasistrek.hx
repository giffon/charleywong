package charleywong.entities;

class Oasistrek implements Entity {
    public final id = "oasistrek";
    public final name = [
        zh => "綠洲",
        en => "Oasistrek"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oasistrek/",
            meta: [
                "about" => "Hiking。Nature。Travel。Conservation",
                "categories" => [
                    "Photography & videography",
                    "Brand",
                    "Hiking trail"
                ],
                "email" => "teddy@oasistrek.com",
                "id" => "111267698912536"
            ]
        },
        {
            url: "https://www.instagram.com/oasistrek/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oasistrek/photos/a.669223953116905/2408912789148004/"
        },
        {
            url: "https://www.facebook.com/oasistrek/posts/2577695938936354"
        }
    ];
    public final tags:Array<Tag> = [];
}

