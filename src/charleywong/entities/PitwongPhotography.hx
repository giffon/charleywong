package charleywong.entities;

class PitwongPhotography implements Entity {
    public final id = "pitwongphoto";
    public final name = [
        en => "Pitwong Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.pitwongphoto.com"
        },
        {
            url: "https://www.facebook.com/pitwongphoto/",
            meta: [
                "id" => "167175918871",
                "about" =>
                "PITWONG consists of professional photographers with talents that offer you unique memories for the most important day of your life.",
                "categories" => [
                    "Product/service"
                ],
                "email" => "pitwongphoto@gmail.com",
                "tel" => "62283264"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/pitwongphoto/posts/10157820275558872"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        wedding
    ];
}

