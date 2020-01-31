package charleywong.entities;

class WingChengMusicStudio implements Entity {
    public final id = "wcmusicstudio";
    public final name = [
        en => "Wing Cheng Music Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/wcmusicstudio/",
            meta: [
                "id" => "612437342539665",
                "about" => "主力提供音樂製作服務，包括作曲，編曲，錄音，混音及後期製作。\n另外，中心亦有一對一及小班音樂課程，如木結他、流行鋼琴、流行歌唱及樂理等等。\n查詢課程、音樂製作服務請Inbox",
                "categories" => [
                    "Music school",
                    "Music production studio"
                ],
                "addr" => "旺角山東街遠景大廈3樓H2室",
                "area" => "Kowloon, Hong Kong",
                "email" => "wcmusicstudio@gmail.com",
                "tel" => "98364244"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/wcmusicstudio/posts/760965944353470"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

