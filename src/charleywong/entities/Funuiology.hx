package charleywong.entities;

class Funuiology implements Entity {
    public final id = "funuiology";
    public final name = [
        zh => "港腐女學",
        en => "Funuiology"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/funuiology/",
            meta: [
                "id" => "541617562636447",
                "about" => "腐女係指喜歡BL(boy\'s love)，幻想男男愛情既女性，亦係相信無懼世事變改,hehe真愛既少女 ♥\n\n做在港腐女其實唔難，我地係時候抬頭，用震撼既聲音同大家講：「我愛BL!!!」\n\ninstagram: funuiology",
                "categories" => [
                    "Artist"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/funuiology/posts/1638409632957229"
        },
        {
            url: "https://www.facebook.com/funuiology/posts/1633363240128535"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        shop
    ];
}

