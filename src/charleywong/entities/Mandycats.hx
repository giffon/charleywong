package charleywong.entities;

class Mandycats implements Entity {
    public final id = "mandycats";
    public final name = [
        zh => "文地貓",
        en => "Mandycat"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mandycat.com"
        },
        {
            url: "https://www.facebook.com/mandycats/",
            meta: [
                "id" => "118714271022",
                "about" =>
                "工作聯絡：Trazy(trazy@mandycat.com)\n產品：shop@mandycat.com\nig:instagram.com/mandycats/\ntwitter:twitter.com/mandycatK\n/ twitter.com/MandycatMichael",
                "categories" => [
                    "Artist"
                ],
                "email" => "info@mandycat.com"
            ]
        },
        {
            url: "https://www.instagram.com/mandycatdrawing/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mandycats/photos/a.10151816965611023/10157455528691023/"
        },
        {
            url: "https://www.facebook.com/mandycats/posts/10157227240056023"
        }
    ];
}

