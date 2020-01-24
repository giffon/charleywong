package charleywong.entities;

class TheOnenessMusicLtd implements Entity {
    public final id = "TheOnenessMusicLtd";
    public final name = [
        zh => "太一音樂",
        en => "The Oneness Music Ltd."
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.theonenessmusic.hk"
        },
        {
            url: "https://www.facebook.com/TheOnenessMusicLtd/",
            meta: [
                "id" => "761816554163289",
                "about" => "設立簡約舒適環境．開辦各類音樂工作坊及樂器課程．",
                "categories" => [
                    "Music school"
                ],
                "addr" => "觀塘 興業街 14號 永興工業大廈 9樓 C11B",
                "area" => "Hong Kong",
                "email" => "info@theonenessmusic.hk",
                "tel" => "31888966"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/TheOnenessMusicLtd/photos/a.787746744903603/1036980023313606/"
        },
        {
            url: "https://www.facebook.com/TheOnenessMusicLtd/photos/a.787746744903603/1060525680959040/"
        },
        {
            url: "https://www.facebook.com/TheOnenessMusicLtd/photos/a.787746744903603/1011280282550247/"
        }
    ];
}

