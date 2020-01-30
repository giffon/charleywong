package charleywong.entities;

class Honeycombstudio implements Entity {
    public final id = "Honeycombstudiohk";
    public final name = [
        en => "Honeycombstudio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Honeycombstudiohk/",
            meta: [
                "id" => "403854459637290",
                "about" => "錄音室及排練室出租，另個人demo錄音,拍片,作曲編曲服務",
                "categories" => [
                    "Performance & event venue",
                    "Music production studio"
                ],
                "addr" => "kwai chung 葵興打磚坪街40-42號松林工業大廈10樓12室",
                "area" => "Kwai Chung"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Honeycombstudiohk/posts/2716980494991330"
        },
        {
            url: "https://www.facebook.com/Honeycombstudiohk/photos/a.629621193727281/2651388061550574/"
        }
    ];
    public final tags:Array<Tag> = [
        music,
        shop
    ];
}

