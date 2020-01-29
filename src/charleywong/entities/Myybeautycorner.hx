package charleywong.entities;

class Myybeautycorner implements Entity {
    public final id = "myybeautycorner";
    public final name = [
        zh => "水漾。潤澤",
        en => "My Beauty Corner"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/myybeautycorner/",
            meta: [
                "id" => "1786994084847247",
                "about" => "良心小店 提供舒適環境 令你放鬆心情接受美容護理時光絕不hardsell 單次收費美容護理\n本人擁有十多年美容經驗 已考取多張證書 e.g ITEC、CIBTAC、C&G等⋯",
                "categories" => [
                    "Beauty salon"
                ],
                "addr" => "教育路88號寶城大廈18鋪閣樓（東江飯店側）",
                "area" => "Yuen Long Town",
                "tel" => "97171727"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/myybeautycorner/photos/a.1797405403806115/2449141538632495/"
        },
        {
            url: "https://www.facebook.com/myybeautycorner/photos/a.1797405403806115/2425639044316078/"
        }
    ];
    public final tags:Array<Tag> = [];
}

