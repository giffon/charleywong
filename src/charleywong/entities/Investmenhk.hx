package charleywong.entities;

class Investmenhk implements Entity {
    public final id = "investmenhk";
    public final name = [
        zh => "90後全職炒家"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.investmenhk.com"
        },
        {
            url: "https://www.facebook.com/investmenhk/",
            meta: [
                "id" => "1137665233076890",
                "categories" => [
                    "Education website",
                    "Investing service"
                ],
                "tel" => "93113302"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/investmenhk/posts/1419606441549433"
        }
    ];
}

