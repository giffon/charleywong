package charleywong.entities;

class JennyTongPhotography implements Entity {
    public final id = "jennytongphotography";
    public final name = [
        en => "Jenny Tong Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://jennytongphotography.com"
        },
        {
            url: "https://www.facebook.com/jennytongphotography/",
            meta: [
                "id" => "322948217893953",
                "about" =>
                "I believes in the power of images, and have been striving for documenting moments that not only catches your eyes, but also catches your souls.\n\nhttp://jennytongphotography.com",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@jennytongphotography.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jennytongphotography/posts/1168689439986489"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

