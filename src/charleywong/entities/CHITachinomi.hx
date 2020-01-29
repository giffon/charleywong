package charleywong.entities;

class CHITachinomi implements Entity {
    public final id = "CHITachinomi";
    public final name = [
        en => "CHI Tachinomi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/CHITachinomi/",
            meta: [
                "id" => "103234331123240",
                "about" => "Offering a unique Japanese Tachinomi (Standing Bar) experience",
                "categories" => [
                    "Bar",
                    "Japanese restaurant",
                    "Yakitori restaurant"
                ],
                "tel" => "28550588"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/CHITachinomi/posts/128463218600351"
        },
        {
            url: "https://www.facebook.com/CHITachinomi/photos/a.105411264238880/105411190905554/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

