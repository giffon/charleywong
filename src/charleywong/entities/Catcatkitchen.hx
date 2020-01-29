package charleywong.entities;

class Catcatkitchen implements Entity {
    public final id = "catcatkitchen";
    public final name = [
        zh => "貓之廚房",
        en => "Cat\'s Kitchen"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/catcatkitchen/",
            meta: [
                "id" => "230498090414515",
                "about" => "本貓的烘焙專頁~\n分享烘焙路上的點滴之路~\n請多多指教~",
                "categories" => [
                    "Food and drinks company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/catcatkitchen/posts/1664879876976322"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

