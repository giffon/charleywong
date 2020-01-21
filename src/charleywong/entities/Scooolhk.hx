package charleywong.entities;

class Scooolhk implements Entity {
    public final id = "scoool.hk";
    public final name = [
        zh => "小時光",
        en => "scoool"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/scoool.hk/",
            meta: [
                "about" => "是否還記得\n哪段曾經屬於我們的美好時光？\n...\n\n\n\n\nSee more",
                "categories" => [
                    "Taiwanese restaurant",
                    "Cafe"
                ],
                "addr" => "觀塘興業街18號美興工業大廈A座1樓C室",
                "area" => "Hong Kong",
                "tel" => "31882380"
            ]
        },
        {
            url: "https://www.instagram.com/scoool_hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/scoool.hk/photos/a.690152554443623/2514371565355037/"
        },
        {
            url: "https://www.facebook.com/scoool.hk/posts/2442733889185472"
        }
    ];
}

