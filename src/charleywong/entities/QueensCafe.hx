package charleywong.entities;

class QueensCafe implements Entity {
    public final id = "QueensCafe";
    public final name = [
        en => "Queen\'s Cafe"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.queenscafe.com"
        },
        {
            url: "https://www.facebook.com/QueensCafe/",
            meta: [
                "id" => "105258816193167",
                "about" =>
                "http://www.queenscafe.com/ Tel: 28989778/Wanchai 21161910/Causeway Bay 31517595/North Point 25762658/Festival Walk Kowloon Tong 22658288/Beijing 64161928",
                "categories" => [
                    "Product/service",
                    "Hong Kong restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/QueensCafe/photos/a.846073282111713/2463007067084985/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

