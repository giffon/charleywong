package charleywong.entities;

class Centuryhobbyactionfigure implements Entity {
    public final id = "centuryhobbyactionfigure";
    public final name = [
        zh => "世紀hobby"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/centuryhobbyactionfigure/",
            meta: [
                "id" => "1442558465991348",
                "about" => "旺角亞皆老街111號皆旺商場地庫b20 & b21",
                "categories" => [
                    "Games/toys",
                    "Toy shop"
                ],
                "email" => "centuryhobby@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/centuryhobbyactionfigure/posts/2490937247820126"
        },
        {
            url: "https://www.facebook.com/centuryhobbyactionfigure/posts/2564646253782558"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

