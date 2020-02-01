package charleywong.entities;

class MusicPicks implements Entity {
    public final id = "333055030145418";
    public final name = [
        en => "Music Picks"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.youtube.com/channel/UC0G9rwitqicAx0WvWPrcL-A/playlists"
        },
        {
            url: "https://www.facebook.com/MusicPicks/",
            meta: [
                "id" => "333055030145418",
                "about" => "八十後男生，偽文青，聽主流華語歌長大\n\n愛唱歌，極愛聽歌\n總覺得不夠時間讀歌詞，總希望看更多演唱會",
                "categories" => [
                    "Music chart"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/333055030145418/photos/1826896827427890/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        media
    ];
}

