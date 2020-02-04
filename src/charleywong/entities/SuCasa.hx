package charleywong.entities;

class SuCasa implements Entity {
    public final id = "sucasa2";
    public final name = [
        en => "Su Casa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sucasa2/",
            meta: [
                "id" => "249959972379449",
                "about" => "A refreshing & spacious seafood restaurant with premium jet fresh oyster! Created by the reputable Casa Group from Causeway Bay.",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "Shop G03, G/F, Kings Wing Plaza 2, No.1 On Kwan Street, Shek Mun",
                "area" => "Sha Tin, Hong Kong",
                "email" => "sucasa@casagroup.com.hk",
                "tel" => "28825000"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sucasa2/photos/a.266046567437456/492956441413133/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

