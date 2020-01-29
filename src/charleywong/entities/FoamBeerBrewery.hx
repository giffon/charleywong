package charleywong.entities;

class FoamBeerBrewery implements Entity {
    public final id = "foambeerbrewery";
    public final name = [
        en => "Foam Beer Brewery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/foambeerbrewery/",
            meta: [
                "categories" => [
                    "Brewery"
                ],
                "email" => "foambeerbrewery@gmail.com",
                "id" => "943412225682824"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/foambeerbrewery/posts/3060666870624005"
        }
    ];
    public final tags:Array<Tag> = [];
}

