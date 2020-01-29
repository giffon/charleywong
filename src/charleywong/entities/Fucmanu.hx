package charleywong.entities;

class Fucmanu implements Entity {
    public final id = "fucmanu";
    public final name = [
        zh => "反獌大聯盟"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fucmanu/",
            meta: [
                "id" => "286980114735583",
                "about" => "who the fuck are man utd",
                "categories" => [
                    "Sport league",
                    "Sports"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fucmanu/posts/2159815944118648/"
        }
    ];
    public final tags:Array<Tag> = [];
}

