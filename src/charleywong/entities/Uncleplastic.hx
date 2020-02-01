package charleywong.entities;

class Uncleplastic implements Entity {
    public final id = "uncleplastic";
    public final name = [
        zh => "膠叔叔",
        en => "Uncle Plastic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/uncleplastic/",
            meta: [
                "id" => "102796121106656",
                "about" => "亂世中以積木苦中作樂的中年大叔，以積木起革命。\n香港人！反抗！",
                "categories" => [
                    "Personal blog",
                    "Artist"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/uncleplastic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/uncleplastic/posts/146796003373334"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

