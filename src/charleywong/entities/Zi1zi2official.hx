package charleywong.entities;

class Zi1zi2official implements Entity {
    public final id = "zi1zi2.official";
    public final name = [
        zh => "枝子",
        en => "The Branches"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/zi1zi2.official/",
            meta: [
                "categories" => [
                    "Product/service"
                ],
                "email" => "zi1zi2.official@gmail.com",
                "tel" => "52828979",
                "id" => "2653067461371622"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zi1zi2.official/photos/a.2653070144704687/2777750692236631/"
        },
        {
            url: "https://www.facebook.com/zi1zi2.official/photos/a.2653070144704687/2873021316042901/"
        }
    ];
    public final tags:Array<Tag> = [
        clothing,
        accessories
    ];
}

