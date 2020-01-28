package charleywong.entities;

class Bushmankitchenhk implements Entity {
    public final id = "BushmanKitchenHK";
    public final name = [
        en => "bushman_kitchen_hk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/bushmankitchen"
        },
        {
            url: "https://www.facebook.com/BushmanKitchenHK/",
            meta: [
                "id" => "105872857443465",
                "about" => "https://www.youtube.com/bushmankitchen\n\nWelcome to the HK Bushman Kitchen!",
                "categories" => [
                    "Event"
                ],
                "email" => "hkbushmenbushmankitchen@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/bushman_kitchen_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/BushmanKitchenHK/videos/628857814516368/"
        }
    ];
}

