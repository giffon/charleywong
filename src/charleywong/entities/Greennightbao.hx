package charleywong.entities;

class Greennightbao implements Entity {
    public final id = "greennightbao";
    public final name = [
        zh => "青參．無教差．宵鮑"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/greennightbao/",
            meta: [
                "id" => "407537999969333",
                "about" => "廢青參戰，冇教差，只教啱，望有日香港人能重回晚晚嘆鮑魚的日子\n\n所以，我要盡自己微薄的力量去救香港，救香港人",
                "categories" => [
                    "Personal blog",
                    "Political organisation",
                    "Politician"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/greennightbao/posts/480061712716961"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

