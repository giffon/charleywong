package charleywong.entities;

class MountainsarecallingKATA implements Entity {
    public final id = "mountainsarecallingKATA";
    public final name = [
        zh => "Kata在山上"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mountainsarecallingKATA/",
            meta: [
                "about" => "討厭路跑，愛上山。\n討厭體能訓練，需要力量。",
                "categories" => [
                    "Personal blog"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mountainsarecallingKATA/posts/2453246958064968"
        }
    ];
}

