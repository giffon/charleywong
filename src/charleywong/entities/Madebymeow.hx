package charleywong.entities;

class Madebymeow implements Entity {
    public final id = "madeby.meow";
    public final name = [
        en => "Made by.MEOW"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/madeby.meow/",
            meta: [
                "about" => "喵製 Made By MEOW.\n喵的小確幸.\n有隻喜歡搞搞震, 什麼都想試的喵. ...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Art"
                ],
                "email" => "meow.handmadehk@gmail.com",
                "tel" => "55423553",
                "id" => "1563393733704175"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/madeby.meow/photos/a.1564220016954880/2472587052784834/"
        }
    ];
    public final tags:Array<Tag> = [];
}

