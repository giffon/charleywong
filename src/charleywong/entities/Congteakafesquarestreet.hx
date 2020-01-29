package charleywong.entities;

class Congteakafesquarestreet implements Entity {
    public final id = "congteakafesquarestreet";
    public final name = [
        en => "Congteakafe",
        zh => "茶咖宅"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/congteakafesquarestreet/",
            meta: [
                "id" => "1869150173331019",
                "about" =>
                "Hong Kong Style Cafe\nHK milk tea VS Expresso base coffee\nHK tea set VS Classic All day breakfast\nEveryone can find your own love here\nPrivate Party Welcome",
                "categories" => [
                    "Cafe",
                    "Hong Kong restaurant"
                ],
                "addr" => "G/F, 24 Square Street,",
                "area" => "Sheung Wan",
                "tel" => "98555146"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/congteakafesquarestreet/posts/2534670203445676"
        },
        {
            url: "https://www.facebook.com/congteakafesquarestreet/posts/2486736341572396"
        },
        {
            url: "https://www.facebook.com/congteakafesquarestreet/posts/2405533316359366"
        }
    ];
    public final tags:Array<Tag> = [];
}

