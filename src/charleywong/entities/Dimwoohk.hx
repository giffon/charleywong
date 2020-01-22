package charleywong.entities;

class Dimwoohk implements Entity {
    public final id = "dimwoohk";
    public final name = [
        zh => "點鍋",
        en => "Dim Woo"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dimwoohk/",
            meta: [
                "about" => "任飲任食靚料火鍋放題",
                "categories" => [
                    "Buffet restaurant",
                    "Hot pot restaurant"
                ],
                "tel" => "62010077",
                "id" => "847668202258287"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/dimwoohk/posts/869580696733704"
        },
        {
            url: "https://www.facebook.com/dimwoohk/posts/942542486104191"
        },
        {
            url: "https://www.facebook.com/dimwoohk/posts/955620884796351"
        }
    ];
}

