package charleywong.entities;

class MYCUPOFTEE implements Entity {
    public final id = "mcotee";
    public final name = [
        en => "MY CUP OF TEE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mcotee.com"
        },
        {
            url: "https://www.facebook.com/mcotee/",
            meta: [
                "id" => "139220399431043",
                "about" => "一件看似簡單的TEE, 不應只是一件商業化的產品, 可以有生命、有回憶、有共同理念的。",
                "categories" => [
                    "Clothing (brand)",
                    "Shopping district"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/mcotee/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mcotee/posts/2819633078056415"
        },
        {
            url: "https://www.facebook.com/mcotee/posts/2690239154329142"
        }
    ];
}

