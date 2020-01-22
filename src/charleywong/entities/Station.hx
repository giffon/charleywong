package charleywong.entities;

class Station implements Entity {
    public final id = "865108003692763";
    public final name = [
        zh => "茶渟",
        en => "Station"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/865108003692763/",
            meta: [
                "categories" => [
                    "Restaurant",
                    "Tea room"
                ],
                "addr" => "土瓜灣譚公道65號d",
                "area" => "Hong Kong",
                "tel" => "92843154",
                "id" => "865108003692763"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/865108003692763/photos/a.874299242773639/1188938367976390/"
        },
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1187265344810359&id=865108003692763"
        }
    ];
}

