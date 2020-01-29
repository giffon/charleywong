package charleywong.entities;

class ABeautifulStore implements Entity {
    public final id = "abeautifulstore";
    public final name = [
        en => "A Beautiful Store"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/abeautifulstore/",
            meta: [
                "about" =>
                "器具 I 衣妝 I 生活美學 ［surrounded by beautiful things］\n. 3/f, 194 Prince Edward Road West, Kowloon, Hong Kong (Flower Market)\n. Wed-Fri: 2-8pm / Sat & Sun: 12-7pm / Mon & Tue: closed\n. Bring your own bag",
                "categories" => [
                    "Home goods shop",
                    "Arts and crafts shop"
                ],
                "addr" => "3/f, 194 prince edward road west, kowloon,",
                "area" => "Hong Kong",
                "email" => "abeautifulstore@gmail.com",
                "id" => "374008576114945"
            ]
        },
        {
            url: "https://www.instagram.com/abeautifulstore/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/abeautifulstore/posts/1338589359656857"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}
