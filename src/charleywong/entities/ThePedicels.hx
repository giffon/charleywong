package charleywong.entities;

class ThePedicels implements Entity {
    public final id = "ThePedicels";
    public final name = [
        en => "The Pedicels"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ThePedicels/",
            meta: [
                "id" => "379167052867655",
                "about" => "— Pâtisserie Française — CUSTOMIZED FOR YOU .\nDesserts | Birthdays | Weddings .\n...\n\n\nSee more",
                "categories" => [
                    "Product/service"
                ],
                "email" => "thepedicels@gmail.com",
                "tel" => "56494777"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ThePedicels/posts/564590630991962"
        }
    ];
    public final tags:Array<Tag> = [];
}

