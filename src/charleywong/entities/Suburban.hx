package charleywong.entities;

class Suburban implements Entity {
    public final id = "suburbanhk";
    public final name = [
        en => "Suburban"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.suburban.com.hk"
        },
        {
            url: "https://www.facebook.com/suburbanhk/",
            meta: [
                "id" => "411593118983075",
                "about" =>
                "Suburban is the store with the coolest Backpack and accessory selection in Hong Kong. Herschel Supply | Rains | Bellroy | Mystery Ranch | Helinox",
                "categories" => [
                    "Outdoor equipment shop",
                    "Bag & suitcase shop",
                    "Sportswear shop"
                ],
                "email" => "sales@suburban.com.hk",
                "tel" => "39545524"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/suburbanhk/photos/a.533113023497750/1662506057225102/"
        }
    ];
}

