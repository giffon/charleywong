package charleywong.entities;

class TEAHUB implements Entity {
    public final id = "teahub439";
    public final name = [
        en => "TEA HUB"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/teahub439/",
            meta: [
                "id" => "107302193264760",
                "about" => "TEAHUB 是一個以茶為主題的小空間,於車水馬龍的橫街中帶來一點點舒泰,於新舊交融的長沙灣中注入一點點新氣息.TEAHUB 除了提供茶飲和食物外,還希望把長沙灣這小社區與不同的人連繫起來。",
                "categories" => [
                    "Tea room"
                ],
                "addr" => "順寧道439號 順寧閣 地下2 號舖",
                "area" => "Kowloon, Hong Kong",
                "email" => "teahub439@gmail.com",
                "tel" => "23377278"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/teahub439/posts/457821821546127"
        },
        {
            url: "https://www.facebook.com/teahub439/posts/433270494001260"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

