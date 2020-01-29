package charleywong.entities;

class HotFocusStudio implements Entity {
    public final id = "150150528381409";
    public final name = [
        en => "Hot Focus Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/150150528381409/",
            meta: [
                "id" => "150150528381409",
                "categories" => [
                    "Company"
                ],
                "email" => "hotfocus.yu@gmail.com",
                "tel" => "61297021"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2830701133659655&id=150150528381409"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=2757636624299440&id=150150528381409"
        }
    ];
    public final tags:Array<Tag> = [];
}

