package charleywong.entities;

class Malic implements Entity {
    public final id = "malichandmade";
    public final name = [
        en => "Malic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/malichandmade/",
            meta: [
                "about" => "Henna artist based in HK.\nOnly using ALL NATURAL homemade henna & jagua\n\nFor any enquires. email : malichandmade@gmail.com",
                "categories" => [
                    "Product/service"
                ],
                "email" => "malichandmade@gmail.com",
                "tel" => "97368253"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/malichandmade/photos/a.232897653416480/2591066547599567/"
        },
        {
            url: "https://www.facebook.com/malichandmade/photos/a.232897653416480/2531100120262877/"
        }
    ];
}

