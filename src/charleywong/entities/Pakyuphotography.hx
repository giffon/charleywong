package charleywong.entities;

class Pakyuphotography implements Entity {
    public final id = "PakyuPhotography";
    public final name = [
        en => "Pakyu photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.pakyuphotography.com"
        },
        {
            url: "https://www.facebook.com/PakyuPhotography/",
            meta: [
                "id" => "122306854493110",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PakyuPhotography/photos/a.200918223298639/2669187366471700/"
        },
        {
            url: "https://www.facebook.com/PakyuPhotography/photos/a.200918223298639/2465370420186730/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer
    ];
}

