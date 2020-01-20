package charleywong.entities;

class YukoShimizu implements Entity {
    public final id = "YukoShimizuArt";
    public final name = [
        en => "Yuko Shimizu"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/YukoShimizuArt/",
            meta: [
                "about" =>
                "http://yukoart.com\nNew York based illustrator. She did NOT create Hello Kitty.\nyou can take class with her now: http://skl.sh/1hjtYIR",
                "categories" => [
                    "Artist"
                ],
                "email" => "yuko@yukoart.com"
            ]
        },
        {
            url: "https://www.instagram.com/http%3A%2F%2Finstagram.com%2Fyukoart/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YukoShimizuArt/photos/a.184539820290/10161862054000291/"
        }
    ];
}

