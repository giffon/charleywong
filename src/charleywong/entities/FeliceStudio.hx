package charleywong.entities;

class FeliceStudio implements Entity {
    public final id = "FeliceStudio";
    public final name = [
        en => "Felice Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.felicestudio.com"
        },
        {
            url: "https://www.facebook.com/FeliceStudio/",
            meta: [
                "id" => "148936771913645",
                "about" => "Live Band | Emcee | Photography",
                "categories" => [
                    "Arts and entertainment",
                    "Wedding planning service"
                ],
                "addr" => "Flat 431C, 4/F, Kowloon Bay Industrial Center, 15 Wang Hoi Road, Kowloon",
                "area" => "Kowloon, Hong Kong",
                "email" => "info@felicestudio.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FeliceStudio/photos/a.162605947213394/1520209144786394/"
        },
        {
            url: "https://www.facebook.com/FeliceStudio/videos/2685681311510519/"
        }
    ];
    public final tags:Array<Tag> = [
        wedding,
        music,
        emcee,
        photographer
    ];
}

