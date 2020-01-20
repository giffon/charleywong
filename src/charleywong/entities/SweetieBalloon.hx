package charleywong.entities;

class SweetieBalloon implements Entity {
    public final id = "SweetieBalloon";
    public final name = [
        en => "Sweetie Balloon"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/SweetieBalloon/",
            meta: [
                "about" =>
                "We specialise in venue decoration of all types and offer a range of balloons including foil, latex, message balloons, popping balloons, balloon gifts etc.\n\nFor further information please come and visit our Balloon Shop or website - www.sweetieballoon.com",
                "categories" => [
                    "Party supply and rental shop",
                    "Arts and entertainment",
                    "Event planner"
                ],
                "addr" => "Shop 207-208, SOLO Building, 41-43 Carnarvon Road, Tsim Sha Tsui,KLN, HK",
                "area" => "Hong Kong",
                "email" => "info@sweetieballoon.com",
                "tel" => "51058011"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/SweetieBalloon/photos/a.521644037873301/2498344716869880"
        }
    ];
}

