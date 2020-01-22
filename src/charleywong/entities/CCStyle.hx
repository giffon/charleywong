package charleywong.entities;

class CCStyle implements Entity {
    public final id = "ccstylehk";
    public final name = [
        en => "CC Style"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/ccstylehk/",
            meta: [
                "categories" => [
                    "Art",
                    "Product/service"
                ],
                "id" => "620443538455563"
            ]
        },
        {
            url: "https://www.instagram.com/cc_stylehk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ccstylehk/photos/a.631582607341656/660284754471441/"
        }
    ];
}

