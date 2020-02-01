package charleywong.entities;

class Stupidmusichk implements Entity {
    public final id = "stupidmusichk";
    public final name = [
        zh => "論盡音樂",
        en => "Stupid Music"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/stupidmusichk/",
            meta: [
                "id" => "514070008703944",
                "about" => "全新網上音樂討論平台\n由歌曲到歌手至唱片公司甚至音樂新聞\n一同評定 STUPID or SMART",
                "categories" => [
                    "Song",
                    "Musician/band",
                    "Community"
                ],
                "email" => "stupidmusichk@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/stupidmusichk/photos/a.514427802001498/2472754626168796/"
        },
        {
            url: "https://www.facebook.com/stupidmusichk/posts/2442311909213068"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        music
    ];
}

