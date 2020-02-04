package charleywong.entities;

class Chopchop implements Entity {
    public final id = "chopchopcafe";
    public final name = [
        en => "Chopchop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chopchopcafe/",
            meta: [
                "id" => "151408108973366",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "厚德商場地下EF06號店",
                "area" => "Hang Hau",
                "email" => "chopchopinfohk@gmail.com",
                "tel" => "23509309"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chopchopcafe/posts/468925620554945"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

