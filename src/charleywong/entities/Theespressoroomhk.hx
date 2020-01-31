package charleywong.entities;

class Theespressoroomhk implements Entity {
    public final id = "espressoroomhk";
    public final name = [
        en => "The espresso room hk"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.theespressoroom.coffee"
        },
        {
            url: "https://www.facebook.com/espressoroomhk/",
            meta: [
                "id" => "166850990675027",
                "about" => "The Espresso Room HK\n#香港小咖啡店\n我們提供兩款不同的義式咖啡豆，第一款是House Blend；第二款是不定期轉換的單品義式豆。",
                "categories" => [
                    "Coffee shop"
                ],
                "email" => "hello@theespressoroom.coffee"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/espressoroomhk/photos/a.170703366956456/419818102044980/"
        },
        {
            url: "https://www.facebook.com/espressoroomhk/photos/a.170703366956456/444816909545099/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

