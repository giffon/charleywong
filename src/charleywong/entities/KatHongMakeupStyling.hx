package charleywong.entities;

class KatHongMakeupStyling implements Entity {
    public final id = "kathong.makeup";
    public final name = [
        en => "Kat Hong Makeup & Styling"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://katsmagicmirror.wix.com/kats"
        },
        {
            url: "https://www.facebook.com/kathong.makeup/",
            meta: [
                "id" => "197252420397705",
                "about" =>
                "Provide Make up service for Wedding, Pre-wedding photo, Graduation, Party.\nFor more details.please email: kats.magicmirror@gmail.com",
                "categories" => [
                    "Makeup artist",
                    "Day spa",
                    "Local service"
                ],
                "email" => "kats.magicmirror@gmail.com",
                "tel" => "98533211"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kathong.makeup/posts/2336092483180344"
        }
    ];
}

