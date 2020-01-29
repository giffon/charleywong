package charleywong.entities;

class GAIAProjectHK implements Entity {
    public final id = "gaiaprojectstudio";
    public final name = [
        en => "GAIA Project H.K"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.gaiaprj.com"
        },
        {
            url: "https://www.facebook.com/gaiaprojectstudio/",
            meta: [
                "id" => "706093746203538",
                "about" => "GAIA Project位置於葵涌工廈內佔地四千多呎，空間寬敞的空間使新娘子最舒適，另有設備齊全的Studio，提供專業攝影及可供租借服務，更有專業化妝師為你設計造型，詳情請inbox或致電查詢。",
                "categories" => [
                    "Bridal shop"
                ],
                "addr" => "葵涌打磚坪街49-53號華基工業大廈2期23樓E室",
                "area" => "Hong Kong",
                "email" => "cs@gaiaprj.com",
                "tel" => "90429991"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/gaiaprojectstudio/posts/1922786824534218"
        }
    ];
    public final tags:Array<Tag> = [];
}

