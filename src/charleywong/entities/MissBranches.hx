package charleywong.entities;

class MissBranches implements Entity {
    public final id = "MissBranches";
    public final name = [
        zh => "葡萄枝子小姐",
        en => "Miss Branches"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/MissBranches/",
            meta: [
                "about" =>
                "Yellow is colour of light and hope.\nCreate colourful products which make you happier and more optimistic.\n\n黃色，代表光明與希望。創作色彩鮮明作品，在繁華都市中發放歡樂正能量的果子。",
                "categories" => [
                    "Artist"
                ],
                "email" => "msbranches@gmail.com",
                "id" => "1622684944634314"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/MissBranches/photos/a.1686156931620448/2596871320549000/"
        },
        {
            url: "https://www.facebook.com/MissBranches/photos/a.1686156931620448/2572246203011512/"
        }
    ];
    public final tags:Array<Tag> = [];
}

