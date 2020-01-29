package charleywong.entities;

class Bar9bike implements Entity {
    public final id = "bar9bike";
    public final name = [
        en => "Bar9bike"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://carousell.com/bar9bike"
        },
        {
            url: "https://www.facebook.com/bar9bike/",
            meta: [
                "id" => "226949441205618",
                "about" => "Keep bar9bike before you die",
                "categories" => [
                    "Interest"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bar9bike/posts/570154626885096"
        },
        {
            url: "https://www.facebook.com/bar9bike/photos/a.230726547494574/539858546581371/"
        },
        {
            url: "https://www.facebook.com/bar9bike/photos/a.230726547494574/536298840270675/"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

