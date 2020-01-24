package charleywong.entities;

class JJMarketplace implements Entity {
    public final id = "jjmarketplaceonline";
    public final name = [
        en => "JJ Marketplace"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hk.carousell.com/jjmarketplace"
        },
        {
            url: "https://www.facebook.com/jjmarketplaceonline/",
            meta: [
                "id" => "2106310856050990",
                "about" => "Eco fashion Eco life\n天然環保素材\n香港製造...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "jjmarketplaceonline@gmail.com",
                "tel" => "91947960"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jjmarketplaceonline/photos/a.2107067432641999/3117853874896678/"
        }
    ];
}

