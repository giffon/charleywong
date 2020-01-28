package charleywong.entities;

class Teaonlyhk implements Entity {
    public final id = "Teaonlyhk";
    public final name = [
        zh => "唇茶",
        en => "teaonlyhk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Teaonlyhk/",
            meta: [
                "id" => "442610322868327",
                "about" => "香港特式手調桃膠茶 100%真材實料\n#低糖 #健康 #養生 #無添加 #桃膠 #奇亞籽\n...\n\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Food delivery service"
                ],
                "email" => "teaonlyhk@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/teaonlyhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Teaonlyhk/photos/a.442622656200427/743606532768703/"
        },
        {
            url: "https://www.facebook.com/Teaonlyhk/photos/a.442622656200427/772817509847605/"
        }
    ];
}

