package charleywong.entities;

class NECROPOON implements Entity {
    public final id = "necropoon";
    public final name = [
        en => "NECRO POON"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/necropoon/",
            meta: [
                "about" => "High Street fashion focus on menswear design and creation",
                "categories" => [
                    "Design & fashion",
                    "Fashion designer",
                    "Clothing (brand)"
                ],
                "addr" => "Hong Kong",
                "area" => "Hong Kong",
                "email" => "necro@necropoon.com",
                "id" => "1532126390392155"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/necropoon/photos/a.1532140167057444/2426650350939750/"
        },
        {
            url: "https://www.facebook.com/necropoon/photos/a.1532140167057444/2415558655382253/"
        }
    ];
}

