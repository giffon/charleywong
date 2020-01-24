package charleywong.entities;

class MusicSunny implements Entity {
    public final id = "Music.Sunny";
    public final name = [
        zh => "晴天林",
        en => "Sunny Lam"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Music.Sunny/",
            meta: [
                "id" => "191241804854",
                "about" => "80後，買唔到樓嘅香港廢青。 鐘意彈琴、彈結他、唱歌、作曲作詞。\n不懂說話，就用音樂來說故事。\nyoutube：晴天林 Sunny Lam\nIG：Sunnylammusic",
                "categories" => [
                    "Musician/band",
                    "Performing arts",
                    "Music video"
                ],
                "email" => "whiteboard250@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/sunnylammusic/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Music.Sunny/posts/10157547673464855"
        },
        {
            url: "https://www.facebook.com/Music.Sunny/posts/10157589350529855"
        }
    ];
}

