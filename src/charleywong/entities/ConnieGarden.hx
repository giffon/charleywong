package charleywong.entities;

class ConnieGarden implements Entity {
    public final id = "conniewahahagarden";
    public final name = [
        en => "Connie Garden"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/conniewahahagarden/",
            meta: [
                "id" => "1633805013350063",
                "categories" => [
                    "Shopping & retail"
                ],
                "tel" => "97949024"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/conniewahahagarden/photos/a.1731992766864620/2705142066216347/"
        }
    ];
    public final tags:Array<Tag> = [
        florist
    ];
}

