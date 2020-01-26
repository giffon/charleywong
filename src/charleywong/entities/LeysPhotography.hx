package charleywong.entities;

class LeysPhotography implements Entity {
    public final id = "leysphoto";
    public final name = [
        en => "Ley\'s Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leysphoto/",
            meta: [
                "id" => "230917943759101",
                "about" => "With female\'s unique perspective to capture the most precious moment\n\nIG: leylandhk",
                "categories" => [
                    "Photographer"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leysphoto/posts/1201830596667826"
        }
    ];
}

