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
                "email" => "yuko@yukoart.com",
                "id" => "113407815290"
            ]
        },
        {
            url: "https://www.instagram.com/yukoart/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YukoShimizuArt/photos/a.184539820290/10161862054000291/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

