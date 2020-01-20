package charleywong.entities;

class Diazmanhei implements Entity {
    public final id = "Diazmanhei";
    public final name = [
        zh => "越野狂人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Diazmanhei/",
            meta: [
                "about" => "我諗我係香港第一個集航拍, 極限徒攀, 街頭健身 的 堅離地人\n\n朋友及山友之間稱之為 大S...\n\n\n\nSee more",
                "categories" => [
                    "Athlete"
                ],
                "email" => "sodiazman@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Diazmanhei/photos/a.151111188711819/633678880455045/"
        }
    ];
}

