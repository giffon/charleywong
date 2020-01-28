package charleywong.entities;

class PuzzleDiningCafe implements Entity {
    public final id = "E18cafe";
    public final name = [
        en => "Puzzle Dining & Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/E18cafe/",
            meta: [
                "id" => "339308343365033",
                "about" =>
                "Cafe, Western Japanese Fusion ,Opening Hours: Mon-Fri 12:00-10:00 Sat, Sun 11:30-10:00 Come and join us now!!!#puzzle cafe & dining",
                "categories" => [
                    "Restaurant",
                    "Coffee shop"
                ],
                "addr" => "On Chun Street 33",
                "area" => "Ma On Shan, Hong Kong",
                "email" => "puzzlediningmos@gmail.com",
                "tel" => "63988678"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/E18cafe/photos/a.343469722948895/439175780044955/"
        },
        {
            url: "https://www.facebook.com/E18cafe/photos/a.343469722948895/379343086028225/"
        }
    ];
}

