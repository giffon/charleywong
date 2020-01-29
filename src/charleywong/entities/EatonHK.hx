package charleywong.entities;

class EatonHK implements Entity {
    public final id = "eatonhkhotel";
    public final name = [
        en => "Eaton HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.eatonworkshop.com"
        },
        {
            url: "https://www.facebook.com/eatonhkhotel/",
            meta: [
                "about" =>
                "Don’t call it a hotel. Eaton HK is part of a new counter culture movement intersecting social impact into every aspect of our lives.",
                "categories" => [
                    "Hospitality service",
                    "Hotel resort",
                    "Food and drink"
                ],
                "addr" => "380 Nathan Road, Kowloon",
                "area" => "Kowloon, Hong Kong",
                "email" => "eatonhk@eatonworkshop.com",
                "tel" => "27101889",
                "id" => "1053956298002337"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/eatonhkhotel/photos/a.2225789044152384/2451425701588716/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

