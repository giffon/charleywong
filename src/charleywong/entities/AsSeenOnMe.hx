package charleywong.entities;

class AsSeenOnMe implements Entity {
    public final id = "asomcloset";
    public final name = [
        en => "As Seen On Me"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/asom_closet/"
        },
        {
            url: "https://www.facebook.com/asomcloset/",
            meta: [
                "about" => "Please follow our IG @asom_closet �",
                "categories" => [
                    "Clothing (brand)"
                ],
                "id" => "664121017344138"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/asomcloset/photos/a.664126394010267/832421663847405/"
        },
        {
            url: "https://www.facebook.com/asomcloset/photos/a.664126394010267/709194696170103/"
        }
    ];
}

