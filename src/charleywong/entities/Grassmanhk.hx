package charleywong.entities;

class Grassmanhk implements Entity {
    public final id = "grassmanhk";
    public final name = [
        zh => "草民",
        en => "Grassman"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/grassmanhk/"
        },
        {
            url: "https://www.facebook.com/grassmanhk/",
            meta: [
                "id" => "1839009869702119",
                "about" => "努力為草民們，提供一個清新舒服既地方，透過用心做既食物，充充電，放低煩惱。",
                "categories" => [
                    "Restaurant",
                    "Coffee shop",
                    "Dessert shop"
                ],
                "addr" => "尖沙咀 厚福街12-12A號 藍馬商業大廈 9樓",
                "area" => "Tsim Sha Tsui",
                "email" => "grassmancafehk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/grassmanhk/posts/2595664490703316"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

