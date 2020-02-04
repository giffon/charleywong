package charleywong.entities;

class Skwpizzapie implements Entity {
    public final id = "skwpizzapie";
    public final name = [
        en => "SKW Pizza Pie",
        zh => "筲箕灣脆意雞"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/skwpizzapie/",
            meta: [
                "id" => "891369807624751",
                "about" => "SKW Pizza Pie 薄餅 焗飯 專門店",
                "categories" => [
                    "Pizza Place",
                    "Fast food restaurant",
                    "Italian restaurant"
                ],
                "addr" => "香港筲箕灣道273號地下",
                "area" => "Shau Kei Wan, Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/skwpizzapie/posts/2347005315394519"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

