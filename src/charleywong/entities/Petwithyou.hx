package charleywong.entities;

class Petwithyou implements Entity {
    public final id = "petwithyou";
    public final name = [
        zh => "連寵拯救隊"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://t.me/petwithyou"
        },
        {
            url: "https://www.facebook.com/petwithyou/",
            meta: [
                "about" => "有意領養浪浪們嘅奴才們歡迎隨時PM我哋",
                "categories" => [
                    "Animal shelter",
                    "Pet sitter"
                ],
                "email" => "lin.pet.helper@gmail.com",
                "id" => "100126051459846"
            ]
        },
        {
            url: "https://www.instagram.com/petwithyouhk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/petwithyou/posts/120527399419711"
        },
        {
            url: "https://www.facebook.com/petwithyou/posts/119847399487711"
        }
    ];
    public final tags:Array<Tag> = [];
}

