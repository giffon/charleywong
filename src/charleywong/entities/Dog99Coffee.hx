package charleywong.entities;

class Dog99Coffee implements Entity {
    public final id = "Dog99-Coffee-901050250059918";
    public final name = [
        en => "Dog99 Coffee"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/901050250059918/",
            meta: [
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "33, Wong Chuk Street",
                "area" => "Sham Shui Po",
                "email" => "dog99coffee@gmail.com",
                "tel" => "68311311",
                "id" => "901050250059918"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/901050250059918/photos/a.902020866629523/1412711075560497/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1266857770145829&id=901050250059918"
        }
    ];
    public final tags:Array<Tag> = [];
}

