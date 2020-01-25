package charleywong.entities;

class FaMukExtraordinaryFlorist implements Entity {
    public final id = "FaMukExtraordinaryFlorist";
    public final name = [
        zh => "花木",
        en => "FaMuk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FaMukExtraordinaryFlorist/",
            meta: [
                "id" => "102642033438806",
                "about" =>
                "FaMuk have our own signature floral design, we concentrate on fresh and dehydrated flowers.\n\nFor more details about our services, questions and orders . Please press \"send message\" on our facebook inbox. We will reply back as soon as possible.",
                "categories" => [
                    "Florist"
                ],
                "addr" => "太子白楊街18號地下",
                "area" => "Hong Kong",
                "email" => "famukhk@gmail.com",
                "tel" => "92388602"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FaMukExtraordinaryFlorist/posts/846293269073675"
        },
        {
            url: "https://www.facebook.com/FaMukExtraordinaryFlorist/posts/844892359213766"
        }
    ];
}

