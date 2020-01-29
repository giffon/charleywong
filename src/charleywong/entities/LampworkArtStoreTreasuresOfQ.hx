package charleywong.entities;

class LampworkArtStoreTreasuresOfQ implements Entity {
    public final id = "TreasuresOfQ";
    public final name = [
        en => "Lampwork Art Store Treasures Of Q"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/TreasuresOfQ/",
            meta: [
                "about" => "TOQ是一間琉璃工藝坊, 主要是開辦琉璃製作課程及售賣琉璃作品",
                "categories" => [
                    "Arts and crafts shop",
                    "Jewellery/watches",
                    "Event"
                ],
                "addr" => "葵定路42號金豐工業大廈2座17樓T室",
                "area" => "Hong Kong",
                "email" => "treasuresofq@gmail.com",
                "tel" => "61896095",
                "id" => "1375679075856985"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TreasuresOfQ/photos/a.1445301162228109/2744067462351466/"
        },
        {
            url: "https://www.facebook.com/TreasuresOfQ/posts/2670850149673198"
        }
    ];
    public final tags:Array<Tag> = [];
}

