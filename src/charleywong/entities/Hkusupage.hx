package charleywong.entities;

class Hkusupage implements Entity {
    public final id = "hkusupage";
    public final name = [
        zh => "香港大學學生會",
        en => "The Hong Kong University Students\' Union"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hkusupage/",
            meta: [
                "id" => "509449175780252",
                "about" => "此為香港大學學生會之官方Facebook專頁。The page shall serve as the official Facebook page of The Hong Kong University Students\' Union.",
                "categories" => [
                    "Community",
                    "School",
                    "College & University"
                ],
                "tel" => "25468455"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkusupage/photos/a.512349045490265/2397817700276714/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

