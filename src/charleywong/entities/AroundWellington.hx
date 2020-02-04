package charleywong.entities;

class AroundWellington implements Entity {
    public final id = "aroundwellingtonhk";
    public final name = [
        en => "Around Wellington"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/aroundwellingtonhk/",
            meta: [
                "id" => "2234007233322371",
                "about" => "Take-Away OMAKASE",
                "categories" => [
                    "Lounge"
                ],
                "email" => "aroundwellington.info@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/around.wellington/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/aroundwellingtonhk/photos/a.2289370737786020/2584162404973517/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

