package charleywong.entities;

class Babasstation implements Entity {
    public final id = "babasstation";
    public final name = [
        en => "Baba\'s Station",
        zh => "巴巴站"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mansarover.hk"
        },
        {
            url: "https://www.facebook.com/babasstation/",
            meta: [
                "id" => "1391491821124220",
                "about" =>
                "We have BBQ dish, Curry & Kebabs, pizza, soup noodles & burger\nEverything here is freshly made to order\nAddress: 81C Hoi pa street, tsuen wan",
                "categories" => [
                    "Indian restaurant"
                ],
                "addr" => "荃灣海壩街81號 (荃灣糖水街)",
                "area" => "Hong Kong",
                "email" => "eshantb@yahoo.com",
                "tel" => "26084270"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/babasstation/posts/2497922357147822"
        },
        {
            url: "https://www.facebook.com/babasstation/posts/2495425500730841"
        },
        {
            url: "https://www.facebook.com/babasstation/posts/2492051477734910"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

