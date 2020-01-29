package charleywong.entities;

class MastermanKitchen implements Entity {
    public final id = "mastermankitchen";
    public final name = [
        en => "Masterman Kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mastermankitchen/",
            meta: [
                "id" => "395733850615150",
                "about" => "用愛作調味，用食物治療心。\n\nWe make noise not food.",
                "categories" => [
                    "Chef",
                    "School",
                    "Gastropub"
                ],
                "email" => "mastermankitchen@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mastermankitchen/posts/1099500283571833"
        }
    ];
    public final tags:Array<Tag> = [];
}

