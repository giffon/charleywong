package charleywong.entities;

class DailySoapHouse implements Entity {
    public final id = "DailySoapHouse";
    public final name = [
        zh => "天皂",
        en => "Daily Soap House"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://dailysoaphouse.com"
        },
        {
            url: "https://www.facebook.com/DailySoapHouse/",
            meta: [
                "id" => "159745654849546",
                "about" => "天皂，含「天然肥皂」的意思，同時也取諧音「天造」，寓意天然製造。天皂主打無棕櫚油手工皂產品，以天然用料低溫冷製，希望最大限度地保留油款和用料營養成分，呵護用家肌膚。",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "dailysoaphouse@gmail.com",
                "tel" => "96171959"
            ]
        },
        {
            url: "https://www.instagram.com/dailysoaphouse/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DailySoapHouse/posts/688200758670697"
        }
    ];
}

