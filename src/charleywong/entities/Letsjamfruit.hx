package charleywong.entities;

class Letsjamfruit implements Entity {
    public final id = "letsjamfruit";
    public final name = [
        zh => "Let\'s Jam 水果直送"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/letsjamfruit/",
            meta: [
                "id" => "105755994255989",
                "categories" => [
                    "Food wholesaler"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/letsjamfruit/posts/118536229644632"
        }
    ];
    public final tags:Array<Tag> = [];
}

