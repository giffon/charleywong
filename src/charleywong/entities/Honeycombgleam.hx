package charleywong.entities;

class Honeycombgleam implements Entity {
    public final id = "honeycombgleam";
    public final name = [
        en => "honeycomb gleam",
        zh => "微光蜂舍"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/honeycombgleam/",
            meta: [
                "id" => "1444151279167138",
                "about" => "實體店不定開，最好預約 -> 6228 4197\n\n微光，和暖而不絢爛...\n\n\n\n\nSee more",
                "categories" => [
                    "Florist",
                    "Business service"
                ],
                "addr" => "紅磡漆咸道北468號地下A及B舖",
                "area" => "Hong Kong",
                "email" => "hello@honeycombgleam.com"
            ]
        },
        {
            url: "https://www.instagram.com/honeycombgleam/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/honeycombgleam/posts/2414044358844487"
        }
    ];
    public final tags:Array<Tag> = [];
}

