package charleywong.entities;

class Fongwaaparlour implements Entity {
    public final id = "fongwaaparlour";
    public final name = [
        en => "Fong Waa Parlour",
        zh => "芳華絕代"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fongwaaparlour/",
            meta: [
                "id" => "208152416632570",
                "categories" => [
                    "Bar",
                    "Thai restaurant"
                ],
                "addr" => "36 Boundary Street",
                "area" => "Hong Kong",
                "tel" => "23662113"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fongwaaparlour/photos/a.260220451425766/540945553353253/"
        },
        {
            url: "https://www.facebook.com/fongwaaparlour/photos/a.227047624743049/473064246808051/"
        }
    ];
}

