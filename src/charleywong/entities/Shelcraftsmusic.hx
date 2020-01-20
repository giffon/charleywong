package charleywong.entities;

class Shelcraftsmusic implements Entity {
    public final id = "shel.crafts.music";
    public final name = [
        zh => "手作音樂",
        en => "Shel crafts&music"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/shel.crafts.music/",
            meta: [
                "about" => "靈感來自音樂\n手繪滴膠作品訂造 // 市集 // 工作坊 // 作曲填詞 // 翻唱 // DIY教學\n一幅畫。一首歌。一個故事\na painting . a song . a story",
                "categories" => [
                    "Product/service"
                ],
                "email" => "shel.crafts.music@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/shel.crafts.music/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/shel.crafts.music/photos/a.308081612734538/1212469418962415/"
        },
        {
            url: "https://www.facebook.com/shel.crafts.music/posts/1179855558890468"
        }
    ];
}

