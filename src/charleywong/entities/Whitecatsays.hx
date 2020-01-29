package charleywong.entities;

class Whitecatsays implements Entity {
    public final id = "whitecatsays";
    public final name = [
        zh => "白貓說"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/whitecatsays/",
            meta: [
                "id" => "264969297215970",
                "about" => "白貓說，\n情緒有時會生病。\n一隻有情緒病的「白貓」，...\n\n\nSee more",
                "categories" => [
                    "Fictional character"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whitecatsays/posts/941564712889755"
        },
        {
            url: "https://www.facebook.com/whitecatsays/photos/a.464569833922581/862019327510961/"
        }
    ];
    public final tags:Array<Tag> = [];
}

