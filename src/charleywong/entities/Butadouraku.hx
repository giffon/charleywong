package charleywong.entities;

class Butadouraku implements Entity {
    public final id = "butadouraku";
    public final name = [
        en => "Butadouraku",
        zh => "豚道樂"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/butadouraku/",
            meta: [
                "id" => "1456306861351437",
                "about" => "豚道楽豚骨湯底每日經長時間慢火熬製，用心製作出濃郁豬骨湯。本店湯底保存了日本傳統九州系白湯風味，再融入日本創新烹調技術，製作出各種不同種類創新拉麵風味！",
                "categories" => [
                    "Ramen Restaurant"
                ],
                "addr" => "香港荃灣大河道63號",
                "area" => "Tsuen Wan, Hong Kong",
                "tel" => "39569163"
            ]
        },
        {
            url: "https://www.facebook.com/ButadourakuWhampoa/",
            meta: [
                "id" => "182910885602066",
                "about" => "豚道楽豚骨湯底每日經長時間慢火熬製，用心製作出濃郁豬骨湯。本店湯底保存了日本傳統九州系白湯風味，再融入日本創新烹調技術，製作出各種不同種類創新拉麵風味！",
                "categories" => [
                    "Restaurant"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/butadouraku/posts/2501800193468760"
        },
        {
            url: "https://www.facebook.com/butadouraku/photos/a.1459046551077468/2419531741695606/"
        },
        {
            url: "https://www.facebook.com/butadouraku/posts/2407649012883879"
        },
        {
            url: "https://www.facebook.com/butadouraku/posts/2386462731669174"
        },
        {
            url: "https://www.facebook.com/ButadourakuWhampoa/posts/517704442122707"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

