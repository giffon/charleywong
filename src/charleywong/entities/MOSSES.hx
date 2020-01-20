package charleywong.entities;

class MOSSES implements Entity {
    public final id = "mossesbooks";
    public final name = [
        en => "MOSSES"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mossesbooks/",
            meta: [
                "about" =>
                "MOSSES is a curated bookstore presenting a select range of niche publications by independent authors and publishers from around the world.",
                "categories" => [
                    "Book shop",
                    "Publisher"
                ],
                "addr" => "14 St. Francis Street, Wanchai",
                "area" => "Hong Kong",
                "email" => "info@mosses.hk",
                "tel" => "23512098"
            ]
        },
        {
            url: "https://www.instagram.com/mossesbooks/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mossesbooks/photos/a.136639403633160/392482371382194"
        }
    ];
}

