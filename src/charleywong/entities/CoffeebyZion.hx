package charleywong.entities;

class CoffeebyZion implements Entity {
    public final id = "coffeebyzion";
    public final name = [
        en => "Coffee by Zion"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/coffeebyzion/",
            meta: [
                "about" => "Opening Working:\n\nWeekday:...\n\n\n\n\nSee more",
                "categories" => [
                    "Coffee shop",
                    "Restaurant"
                ],
                "addr" => "Shop 1, Chun King Court, 83 First Street",
                "area" => "Sai Ying Pun",
                "email" => "coffeebyzion@gmail.com",
                "tel" => "28571838",
                "id" => "1024516687674493"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/coffeebyzion/photos/a.1036184569841038/2060002750792543/"
        }
    ];
    public final tags:Array<Tag> = [];
}

