package charleywong.entities;

class FaMiuly implements Entity {
    public final id = "FaMiuly";
    public final name = [
        zh => "花貓",
        en => "FaMiuly"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FaMiuly/",
            meta: [
                "about" => "我是養了2隻貓的花，居於香港。\n花貓Famiuly 於2015年成立，售賣插畫、明信片、紙膠帶為主。\n工作聯繫：contact@famiuly.com",
                "categories" => [
                    "Artist",
                    "Art"
                ],
                "email" => "contact@famiuly.com",
                "id" => "231436817650370"
            ]
        },
        {
            url: "https://www.instagram.com/famiuly_art/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FaMiuly/posts/589774921816556"
        },
        {
            url: "https://www.facebook.com/FaMiuly/photos/a.379188019541915/560745338052848/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

