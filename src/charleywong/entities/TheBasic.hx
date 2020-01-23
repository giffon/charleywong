package charleywong.entities;

class TheBasic implements Entity {
    public final id = "TheBasicfood";
    public final name = [
        en => "The Basic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TheBasicfood/",
            meta: [
                "id" => "174427929914472",
                "about" => "主打手工漢堡��炸物小食�� 意粉飯餐��即叫即製 手打牛肉 自家醬汁 受過專業西廚訓練� 曾任五星酒店 品質保證�",
                "categories" => [
                    "Fast food restaurant"
                ],
                "addr" => "新界元朗金輝徑28號好盛洋樓地下14A鋪",
                "area" => "Yuen Long",
                "email" => "thebasic0506@gmail.com",
                "tel" => "96207200"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TheBasicfood/posts/423165651707364"
        }
    ];
}

