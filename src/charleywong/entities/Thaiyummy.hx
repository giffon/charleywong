package charleywong.entities;

class Thaiyummy implements Entity {
    public final id = "thaiyummy";
    public final name = [
        zh => "泰Yummy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/thaiyummy/",
            meta: [
                "id" => "103015561179345",
                "about" => "主要經營地道的泰國菜，可以令香港食到地道的泰國菜式，誠意經營。",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "元朗教育路83號元達樓地鋪2號",
                "area" => "Hong Kong",
                "tel" => "24434560"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/thaiyummy/photos/a.118518099629091/118518076295760/"
        },
        {
            url: "https://www.facebook.com/thaiyummy/photos/a.118518099629091/132706884876879/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

