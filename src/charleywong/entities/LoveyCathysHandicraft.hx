package charleywong.entities;

class LoveyCathysHandicraft implements Entity {
    public final id = "LoveyCathysHandicraft";
    public final name = [
        en => "LoveyCathy\'s Handicraft"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LoveyCathysHandicraft/",
            meta: [
                "about" => "Unique & Delicate\n\n你的口金包專門店",
                "categories" => [
                    "Artist"
                ],
                "email" => "loveycathy@gmail.com",
                "id" => "127149733989939"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LoveyCathysHandicraft/posts/2543502959021259"
        },
        {
            url: "https://www.facebook.com/LoveyCathysHandicraft/posts/2445963262108563"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

