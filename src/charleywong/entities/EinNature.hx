package charleywong.entities;

class EinNature implements Entity {
    public final id = "E-in-Nature";
    public final name = [
        zh => "帶孩在野"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/帶孩在野-E-in-Nature-607502866047229/",
            meta: [
                "about" => "[儍媽寫野] 我……有感而發！\n[田原樂] 愛自然先愛耕田\n[Emma足跡] 我们走过的...\n\n\n\n\n\nSee more",
                "categories" => [
                    "Just for fun"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/permalink.php?story_fbid=1587672298030276&id=607502866047229"
        }
    ];
}

