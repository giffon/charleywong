package charleywong.entities;

class MIHKtv implements Entity {
    public final id = "MIHK.tv";
    public final name = [
        en => "MIHK.tv",
        zh => "香港製造網絡電視"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://home.mihk.tv"
        },
        {
            url: "https://www.facebook.com/MIHK.tv/",
            meta: [
                "id" => "209123542630079",
                "about" => "MIHK.tv香港製造網絡電視，一至六晚都有節目做!\n堅持:本土創新，唔chok高深! 做自己，爽到貼地!",
                "categories" => [
                    "Radio station",
                    "Entertainment website"
                ],
                "addr" => "觀塘，駿業街49號，佳貿中心15樓01室",
                "area" => "Kwun Tong",
                "email" => "cs@mihk.tv",
                "tel" => "39558673"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MIHK.tv/posts/1091094514432973"
        },
        {
            url: "https://www.facebook.com/MIHK.tv/posts/1028132047395887"
        }
    ];
}

