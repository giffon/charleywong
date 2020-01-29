package charleywong.entities;

class TamLeo implements Entity {
    public final id = "WelcomeToMyTamLeo";
    public final name = [
        en => "Tam Leo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/WelcomeToMyTamLeo/",
            meta: [
                "id" => "1648692188715526",
                "about" => "HEY YO!\n歡迎你 多謝你\n...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Interior design studio",
                    "Travel services",
                    "Wedding planning service"
                ],
                "email" => "mr.tamleo@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WelcomeToMyTamLeo/photos/a.1648728958711849/2361514920766579/"
        }
    ];
    public final tags:Array<Tag> = [];
}

