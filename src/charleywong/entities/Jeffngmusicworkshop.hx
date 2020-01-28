package charleywong.entities;

class Jeffngmusicworkshop implements Entity {
    public final id = "Jeffngmusicworkshop";
    public final name = [
        zh => "雀夫音樂室",
        en => "jeffngmusic"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UCykplrtphpr_yCTfEhqmZew?view_as=subscriber"
        },
        {
            url: "https://www.facebook.com/Jeffngmusicworkshop/",
            meta: [
                "id" => "347719009408772",
                "about" => "1）Acoustic 音樂演出&分享\n2）音樂「錄制」及「混音」制作\n3）樂譜分享（Ukulele & Guitar TAB 譜）",
                "categories" => [
                    "Music video",
                    "Musician/band"
                ],
                "email" => "jeffreyng886@gmail.com",
                "tel" => "98375774"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Jeffngmusicworkshop/posts/536680297179308"
        },
        {
            url: "https://www.facebook.com/Jeffngmusicworkshop/photos/a.363179144529425/543965279784143/"
        }
    ];
}

