package charleywong.entities;

class BenthamLPhotography implements Entity {
    public final id = "Benthamlphoto";
    public final name = [
        en => "Bentham.L Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://benthaml.com"
        },
        {
            url: "https://www.facebook.com/Benthamlphoto/",
            meta: [
                "id" => "549145148538105",
                "about" => "BenthamL Photography",
                "categories" => [
                    "Photographer"
                ],
                "email" => "info@benthaml.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Benthamlphoto/photos/a.549568718495748/2721532877965977/"
        },
        {
            url: "https://www.facebook.com/Benthamlphoto/photos/a.549568718495748/2606302509489015/"
        },
        {
            url: "https://www.facebook.com/Benthamlphoto/photos/a.549568718495748/2600891146696818/"
        },
        {
            url: "https://www.facebook.com/Benthamlphoto/posts/2584625481656718"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

