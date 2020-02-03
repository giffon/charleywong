package charleywong.entities;

class LOKYUENHK implements Entity {
    public final id = "LOKYUENHK";
    public final name = [
        zh => "樂園魚蛋"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LOKYUENHK/",
            meta: [
                "id" => "2064871120276707",
                "about" => "樂園魚蛋在香港以有超過五十年歷史，我們堅持香港製造、新鮮直送、不含防腐劑。",
                "categories" => [
                    "Retail company",
                    "Food wholesaler",
                    "Merchandising service"
                ],
                "addr" => "香港",
                "area" => "San Po Kong",
                "tel" => "55422987"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LOKYUENHK/photos/a.2085260808237738/2682508758512937/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

