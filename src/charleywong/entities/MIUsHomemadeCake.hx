package charleywong.entities;

class MIUsHomemadeCake implements Entity {
    public final id = "miuhmc";
    public final name = [
        en => "MIU\'s Homemade Cake"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/miuhmc/",
            meta: [
                "id" => "221335061229175",
                "categories" => [
                    "Personal blog"
                ],
                "email" => "miuhmc.hm@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/miuhmc/photos/a.581593815203296/3138214766207842/"
        }
    ];
    public final tags:Array<Tag> = [];
}

