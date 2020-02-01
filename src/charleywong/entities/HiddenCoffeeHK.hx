package charleywong.entities;

class HiddenCoffeeHK implements Entity {
    public final id = "HiddenCoffeeHK";
    public final name = [
        zh => "隱啡"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HiddenCoffeeHK/",
            meta: [
                "id" => "565251810318620",
                "about" => "聯絡我們：\n電話:64901236\nInstagram id:hiddencoffeehk\n電郵:hiddencoffeehk@gmail.com",
                "categories" => [
                    "Local business"
                ],
                "addr" => "青山公路109號好運洋樓地下6號鋪",
                "area" => "Tuen Mun",
                "email" => "hiddencoffeehk@gmail.com",
                "tel" => "64901236"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HiddenCoffeeHK/photos/a.568063343370800/1224598164383978/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

