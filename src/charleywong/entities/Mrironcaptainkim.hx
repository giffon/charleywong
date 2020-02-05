package charleywong.entities;

class Mrironcaptainkim implements Entity {
    public final id = "mr.iron.captain.kim";
    public final name = [
        zh => "熨烤達人"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mr.iron.captain.kim/",
            meta: [
                "id" => "1834911126725291",
                "about" => "在具風格的店舖佈置下，配上嚴選韓國高級食材、五星級烤肉，還有以獨特烹調製作的多項創意菜式，讓食客們一再回味。",
                "categories" => [
                    "Bar & Grill",
                    "Korean restaurant",
                    "Theme restaurant"
                ],
                "addr" => "鑽石山荷里活廣場三樓320B舖",
                "area" => "Kowloon, Hong Kong",
                "tel" => "23383370"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mr.iron.captain.kim/posts/2459254904290907"
        },
        {
            url: "https://www.facebook.com/mr.iron.captain.kim/photos/a.1864053363811067/2416926808523717/"
        },
        {
            url: "https://www.facebook.com/mr.iron.captain.kim/photos/a.1864053363811067/2411921235690941/"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

