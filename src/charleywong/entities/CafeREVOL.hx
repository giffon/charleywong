package charleywong.entities;

class CafeREVOL implements Entity {
    public final id = "caferevol";
    public final name = [
        en => "Cafe REVOL"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/caferevol/",
            meta: [
                "about" =>
                "《Cafe Revol》以畫廊為設計概念，提供優質的咖啡及精緻的創意輕食。\n\nInspired by art gallery, “Café Revol\" is a place with exotic design items, good coffee and creative light meals.",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "Shop No.5, G/F, Fortune Terrace, 4-16 Tak Shing Street, Jordan, Kowloon",
                "area" => "Hong Kong",
                "tel" => "37020170",
                "id" => "1630196367310399"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/caferevol/posts/2346933075636721"
        }
    ];
    public final tags:Array<Tag> = [];
}

