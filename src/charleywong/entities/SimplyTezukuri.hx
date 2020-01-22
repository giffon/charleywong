package charleywong.entities;

class SimplyTezukuri implements Entity {
    public final id = "simplytezukuri";
    public final name = [
        en => "Simply Tezukuri"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/simplytezukuri/",
            meta: [
                "about" => "金屬線手作店\n純粹熱愛手作 志在分享快樂\n扭曲銅線及鋁線 為你打造獨特飾品...\n\n\nSee more",
                "categories" => [
                    "Product/service",
                    "Arts and crafts shop"
                ],
                "email" => "wireart@simplytezukuri.com",
                "id" => "222851664584794"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/simplytezukuri/photos/a.223120054557955/1119686198234665/"
        }
    ];
}

