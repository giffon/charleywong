package charleywong.entities;

class YingFengFood implements Entity {
    public final id = "YingFengFood";
    public final name = [
        zh => "瀛豐放題料理專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/YingFengFood/",
            meta: [
                "id" => "2099876796957794",
                "about" => "日式、泰式、火鍋、放題料理",
                "categories" => [
                    "Japanese restaurant",
                    "Buffet restaurant"
                ],
                "addr" => "銅鑼灣駱克道491-499京都廣場10樓全層",
                "area" => "Hong Kong",
                "tel" => "96901733"
            ]
        },
        {
            url: "https://www.instagram.com/yingfeng_food/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YingFengFood/posts/2591289917816477"
        },
        {
            url: "https://www.facebook.com/YingFengFood/posts/2556261747985961"
        },
        {
            url: "https://www.facebook.com/YingFengFood/posts/2543241672621302"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

