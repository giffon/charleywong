package charleywong.entities;

class Megatealtdd implements Entity {
    public final id = "megatealtdd";
    public final name = [
        zh => "茶半香初"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/megatealtdd/",
            meta: [
                "id" => "295461671404188",
                "about" => "荃灣士林食街",
                "categories" => [
                    "Restaurant"
                ],
                "email" => "mega.tea.ltd@gmail.com",
                "tel" => "68868482"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/megatealtdd/posts/478364196447267"
        },
        {
            url: "https://www.facebook.com/megatealtdd/posts/472559957027691"
        },
        {
            url: "https://www.facebook.com/megatealtdd/posts/470913853858968"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

