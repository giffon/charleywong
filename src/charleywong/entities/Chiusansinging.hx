package charleywong.entities;

class Chiusansinging implements Entity {
    public final id = "chiusansinging";
    public final name = [
        zh => "聽秋山唱歌"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/chiusansinging/",
            meta: [
                "id" => "372684396415372",
                "about" => "陳秋山\n獨立唱作歌手、瑜伽老師。2018年5月發行首張個人專輯《走唱人間》。",
                "categories" => [
                    "Art"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/chiusansinging/videos/757513904721858/"
        }
    ];
    public final tags:Array<Tag> = [
        music
    ];
}

