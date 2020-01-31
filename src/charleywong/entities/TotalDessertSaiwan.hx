package charleywong.entities;

class TotalDessertSaiwan implements Entity {
    public final id = "TotalDessertSaiwan";
    public final name = [
        zh => "滔滔甜品 西環店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TotalDessertSaiwan/",
            meta: [
                "id" => "2219361418130619",
                "about" => "中式/台式甜品",
                "categories" => [
                    "Dessert shop"
                ],
                "addr" => "香港西環水街1號E地下",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TotalDessertSaiwan/posts/2535314706535287"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

