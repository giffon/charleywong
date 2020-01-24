package charleywong.entities;

class PetvPlayEveryGames implements Entity {
    public final id = "PetvPlayEveryGames";
    public final name = [
        zh => "PeTv 電子格鬥遊戲及趣味資訊分享專頁"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.twitch.tv/petvplayeverygames"
        },
        {
            url: "https://www.facebook.com/PetvPlayEveryGames/",
            meta: [
                "id" => "330508043972235",
                "about" => "YO~~大家好~\n呢到係一個集合分享電子格鬥遊戲,同一些趣味資訊平台~!\n不定時找一些有趣值得一起參與既SWITCH或STEAM遊戲...\n\n\nSee more",
                "categories" => [
                    "TV network"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/PetvPlayEveryGames/posts/976608979362135"
        }
    ];
}

