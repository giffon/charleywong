package charleywong.entities;

class AmyLeungMakeUp implements Entity {
    public final id = "AmyMUA";
    public final name = [
        en => "Amy Leung MakeUp"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/AmyMUA/",
            meta: [
                "id" => "212957585432312",
                "about" =>
                "Simple, elegant are the basic ideas of what Amy likes and prefers to create for clients. She provides professional makeup services which included Bride, Pre-wedding, Bride-maid or Banquet Makeup etc.",
                "categories" => [
                    "Makeup artist"
                ],
                "email" => "amyleungny@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/AmyMUA/photos/a.581072945287439/2685730064821706/"
        }
    ];
}

