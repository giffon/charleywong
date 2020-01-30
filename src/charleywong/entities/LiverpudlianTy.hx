package charleywong.entities;

class LiverpudlianTy implements Entity {
    public final id = "LiverpudlianTyNews";
    public final name = [
        en => "Liverpudlian Ty"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/LiverpudlianTyNews/",
            meta: [
                "id" => "188362544976733",
                "about" => "Welcome to Liverpudlianty (TY) Facebook Page.\n\nSharing Liverpool FC\'s transfer news and would be more .........\n\n\nSee more",
                "categories" => [
                    "News and media website",
                    "Media/news company",
                    "Sport team"
                ],
                "email" => "liverpudlianty@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LiverpudlianTyNews/posts/736170876862561"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

