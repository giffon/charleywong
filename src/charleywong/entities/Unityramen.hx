package charleywong.entities;

class Unityramen implements Entity {
    public final id = "unityramen";
    public final name = [
        zh => "團日式拉麵"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://s.openrice.com/QrbS0NSO800"
        },
        {
            url: "https://www.facebook.com/unityramen/",
            meta: [
                "id" => "958792640945132",
                "categories" => [
                    "Ramen Restaurant"
                ],
                "addr" => "新界荃灣 大屋街18號 金豐閣地下1&2號舖",
                "area" => "Tsuen Wan, Hong Kong",
                "tel" => "24882322"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/unityramen/photos/a.981738578650538/1382849051872820/"
        },
        {
            url: "https://www.facebook.com/unityramen/photos/a.981381495352913/1349921685165557/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

