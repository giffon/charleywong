package charleywong.entities;

class Arigatouhk implements Entity {
    public final id = "arigatou.hk";
    public final name = [
        zh => "我は何しに香港へ？"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/arigatouhk"
        },
        {
            url: "https://www.facebook.com/arigatou.hk/",
            meta: [
                "id" => "1235594113135554",
                "about" => "香港在住10年のSOKOが香港を紹介する番組。不定期で放送中。目標100話！",
                "categories" => [
                    "TV programme"
                ]
            ]
        },
        {
            url: "https://www.instagram.com/sokoizumi/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/arigatou.hk/posts/3177737505587862"
        },
        {
            url: "https://www.facebook.com/arigatou.hk/posts/3158997110795235"
        },
        {
            url: "https://www.facebook.com/arigatou.hk/posts/3122422791119334"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure,
        media
    ];
}

