package charleywong.entities;

class Galuthk implements Entity {
    public final id = "galut.hk";
    public final name = [
        zh => "香港基督徒政治及社關平台"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/galut.hk/",
            meta: [
                "id" => "663232444194756",
                "about" => "Act justly. Love mercy. Walk humbly.",
                "categories" => [
                    "Blogger",
                    "Community",
                    "Author"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/galut_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/galut.hk/photos/a.663415004176500/804934210024578/"
        },
        {
            url: "https://www.facebook.com/galut.hk/photos/a.663415004176500/803786836805982/"
        }
    ];
}

