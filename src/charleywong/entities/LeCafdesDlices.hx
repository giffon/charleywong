package charleywong.entities;

class LeCafdesDlices implements Entity {
    public final id = "yuenlong.Le.Cafe.des.Delices";
    public final name = [
        en => "Le Café des Délices"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/le.cafe.des.delices/"
        },
        {
            url: "https://www.facebook.com/yuenlong.Le.Cafe.des.Delices/",
            meta: [
                "id" => "591500767627446",
                "about" => "創於2014年8月 元朗法式小店\n-法國窩夫專門店-\n歡迎訂座、預訂蛋糕\n主IG: le.cafe.des.delices\n蛋糕IG: le.cafe_cake.jpg",
                "categories" => [
                    "French restaurant",
                    "Dessert shop",
                    "Coffee shop"
                ],
                "addr" => "新界元朗合益路9-15號紀業樓地下i舖(徐澤林小學旁小巷)",
                "area" => "Hong Kong",
                "email" => "le.cafe.des.delices.hk@gmail.com",
                "tel" => "69993953"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/yuenlong.Le.Cafe.des.Delices/photos/a.593608254083364/2407139489396889/"
        },
        {
            url: "https://www.facebook.com/yuenlong.Le.Cafe.des.Delices/photos/a.593608254083364/2396377317139773/"
        }
    ];
}

