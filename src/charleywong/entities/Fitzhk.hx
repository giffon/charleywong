package charleywong.entities;

class Fitzhk implements Entity {
    public final id = "fitz.hk";
    public final name = [
        zh => "Fitz 運動平台"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fitz.hk/",
            meta: [
                "about" => "用汗水成就夢想\nFitz 運動生活平台\n\nig: @fitz.hk\nemail: info@fitz.hk",
                "categories" => [
                    "News and media website",
                    "Sport & recreation"
                ],
                "email" => "info@fitz.hk",
                "id" => "731163800294100"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fitz.hk/posts/2318698411540623"
        }
    ];
}

