package charleywong.entities;

class Hungrydinohk implements Entity {
    public final id = "hungrydino.hk";
    public final name = [
        en => "Hungry Dino",
        zh => "為食龍"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/hungrydino.hk/",
            meta: [
                "id" => "303096817287150",
                "about" => "EAT LIKE A DINOSAUR :",
                "categories" => [
                    "Sushi Restaurant"
                ],
                "addr" => "銅鑼灣耀華街3號百樂中心G01號鋪",
                "area" => "Causeway Bay",
                "email" => "info@hungry-dino.com",
                "tel" => "35802874"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hungrydino.hk/photos/a.303184580611707/413397526257078/"
        },
        {
            url: "https://www.facebook.com/hungrydino.hk/posts/349757402621091"
        },
        {
            url: "https://www.facebook.com/hungrydino.hk/photos/a.303184580611707/418333545763476/"
        }
    ];
}

