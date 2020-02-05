package charleywong.entities;

class Dumo implements Entity {
    public final id = "dumo.art";
    public final name = [
        en => "Dumo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dumo.art/",
            meta: [
                "id" => "282572161777440",
                "about" => "Dumo is a cheetah",
                "categories" => [
                    "Fictional character"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dumo.art/posts/2614058091962157"
        },
        {
            url: "https://www.facebook.com/dumo.art/posts/3014019505299345"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

