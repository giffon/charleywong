package charleywong.entities;

class BeautyHouse implements Entity {
    public final id = "417774265726011";
    public final name = [
        en => "Beauty House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/417774265726011/",
            meta: [
                "id" => "417774265726011",
                "about" => "歡迎零售/批發",
                "categories" => [
                    "Beauty, cosmetic & personal care"
                ],
                "email" => "yan_0427girl@hotmail.com",
                "tel" => "56172009"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/417774265726011/photos/a.422307891939315/574900513346718/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=541848906651879&id=417774265726011"
        }
    ];
}

