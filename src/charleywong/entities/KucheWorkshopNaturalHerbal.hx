package charleywong.entities;

class KucheWorkshopNaturalHerbal implements Entity {
    public final id = "KucheWorkshopNatural.Herbal";
    public final name = [
        zh => "手作花廚",
        en => "Küche Workshop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KucheWorkshopNatural.Herbal/",
            meta: [
                "about" => "手作花廚讓你感受天然、無添加的美容護膚世界!\n\n歡迎致電查詢及預約,\n電話: 9721 2082 / 3998 3483 Toby Yung (敬請預約)",
                "categories" => [
                    "Arts and crafts shop",
                    "Cosmetics shop",
                    "Product/service"
                ],
                "addr" => "九龍荔枝角青山道479號麗昌工廠大廈6樓604K室(荔枝角地鐵站B1出口)",
                "area" => "Kowloon, Hong Kong",
                "tel" => "90882283",
                "id" => "674512199307009"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KucheWorkshopNatural.Herbal/posts/2785392608218947"
        },
        {
            url: "https://www.facebook.com/KucheWorkshopNatural.Herbal/photos/a.677822328975996/2705533532871522/"
        },
        {
            url: "https://www.facebook.com/KucheWorkshopNatural.Herbal/posts/2650651921693017"
        },
        {
            url: "https://www.facebook.com/KucheWorkshopNatural.Herbal/photos/a.677822328975996/2646675232090686/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

