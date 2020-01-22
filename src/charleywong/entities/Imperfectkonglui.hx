package charleywong.entities;

class Imperfectkonglui implements Entity {
    public final id = "imperfectkonglui";
    public final name = [
        zh => "不完美港女手作",
        en => "Imperfect Kong Lui Handmade"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/imperfectkonglui/",
            meta: [
                "about" => "我們每個人，也或多或少都是一枚雞蛋。我們都是獨一無二，裝在脆弱外殼中的靈魂。你我也或多或少，都必須面對一堵名為「體制」的高牆。體制照理應該保護我們，但有時它卻殘殺我們。",
                "categories" => [
                    "Shopping & retail"
                ],
                "id" => "102121421222105"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/imperfectkonglui/posts/131334828300764"
        },
        {
            url: "https://www.facebook.com/imperfectkonglui/posts/120663089367938"
        },
        {
            url: "https://www.facebook.com/imperfectkonglui/posts/124373115663602"
        }
    ];
}

