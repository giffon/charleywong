package charleywong.entities;

class After10 implements Entity {
    public final id = "after10hk";
    public final name = [
        en => "After10"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.youtube.com/after10hk"
        },
        {
            url: "https://www.facebook.com/after10hk/",
            meta: [
                "about" => "After10 香港獨立樂隊,於 2014 年成立,成員為主音及結他手陳永康、低音結他手姚榮豐及鼓手陳仲偉。\n三人由彼此認識至樂隊成立剛好十年,「After10」取其「十年後」的意思",
                "categories" => [
                    "Musician/band"
                ],
                "email" => "after10hk@gmail.com",
                "tel" => "93089649"
            ]
        },
        {
            url: "https://www.instagram.com/after10hk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/after10hk/posts/2294123847371470"
        }
    ];
}

