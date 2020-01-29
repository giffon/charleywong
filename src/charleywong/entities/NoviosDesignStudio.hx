package charleywong.entities;

class NoviosDesignStudio implements Entity {
    public final id = "novioshk";
    public final name = [
        en => "Novios Design Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.novioshk.com"
        },
        {
            url: "https://www.facebook.com/novioshk/",
            meta: [
                "id" => "1393637027584383",
                "about" => "Novios Design Studio\n人手製煲呔，可以用作日常搭配、派對，或婚禮兄弟煲呔及手花，亦可來圖訂造。\n...\n\n\n\nSee more",
                "categories" => [
                    "Accessories",
                    "Men\'s clothes shop",
                    "Clothing (brand)"
                ],
                "email" => "novioshk@gmail.com",
                "tel" => "67229330"
            ]
        },
        {
            url: "https://www.instagram.com/novioshk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/novioshk/posts/2458802751067800"
        }
    ];
    public final tags:Array<Tag> = [];
}

