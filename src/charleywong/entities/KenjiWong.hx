package charleywong.entities;

class KenjiWong implements Entity {
    public final id = "princekenjiwong";
    public final name = [
        en => "Kenji Wong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/princekenjiwong/"
        },
        {
            url: "https://www.facebook.com/princekenjiwong/",
            meta: [
                "id" => "271884363240353",
                "about" => "Model\nWedding Emcee\nContact email: princekenjiwong@yahoo.com.hk",
                "categories" => [
                    "Public figure",
                    "Wedding planning service"
                ],
                "email" => "princekenjiwong@yahoo.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/princekenjiwong/posts/780739309021520"
        }
    ];
    public final tags:Array<Tag> = [];
}

