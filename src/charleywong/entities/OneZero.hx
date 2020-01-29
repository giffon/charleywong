package charleywong.entities;

class OneZero implements Entity {
    public final id = "onezzero";
    public final name = [
        en => "One+Zero"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/onezzero/",
            meta: [
                "about" => "_ONE+ZERO_\n-VINTAGE 古著店-\n+親自出國為大家挑選貨品...\n\n\nSee more",
                "categories" => [
                    "Vintage shop",
                    "Clothes shop"
                ],
                "addr" => "Hong Kong",
                "area" => "Hong Kong",
                "tel" => "61544683",
                "id" => "240782003026621"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/onezzero/photos/a.240788556359299/840211379750344/"
        }
    ];
    public final tags:Array<Tag> = [];
}

