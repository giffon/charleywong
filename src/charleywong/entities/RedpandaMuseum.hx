package charleywong.entities;

class RedpandaMuseum implements Entity {
    public final id = "redpandaMuseum";
    public final name = [
        zh => "小熊貓博物館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/redpandaMuseum/",
            meta: [
                "id" => "103410054343246",
                "about" => "館長\n身於香港的小熊貓狂熱者\n四出搜集其足跡\n\n副修狐狸、浣熊、rascal學",
                "categories" => [
                    "Wildlife sanctuary",
                    "Boutique shop",
                    "Art"
                ],
                "addr" => "小熊貓共和國",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/redpandaMuseum/photos/a.103446774339574/103443067673278/"
        },
        {
            url: "https://www.facebook.com/redpandaMuseum/photos/a.103446774339574/151693866181531/"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

