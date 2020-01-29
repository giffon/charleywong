package charleywong.entities;

class Bewordist implements Entity {
    public final id = "bewordist";
    public final name = [
        zh => "彩繪文字師",
        en => "WORDist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/bewordist/",
            meta: [
                "about" => "希望把平靜與溫柔帶給身邊人的「WORDist‧文字師」",
                "categories" => [
                    "Artist"
                ],
                "email" => "bewordist@gmail.com",
                "id" => "246503055407208"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/bewordist/photos/a.1136922623031909/2961219493935537/"
        },
        {
            url: "https://www.facebook.com/bewordist/photos/a.1136922623031909/2709499435774212/"
        },
        {
            url: "https://www.facebook.com/bewordist/posts/2532891516768339"
        }
    ];
    public final tags:Array<Tag> = [
        artist
    ];
}

