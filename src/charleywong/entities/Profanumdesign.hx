package charleywong.entities;

class Profanumdesign implements Entity {
    public final id = "profanumdesign";
    public final name = [
        en => "profanumdesign"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/profanumdesign/",
            meta: [
                "about" => "「凡云」—「凡人有云」，是凡人的話語，是創作的開端。\n凡人都未必是發現火種的普羅米修斯，但時間總會刻上已成或未成的夢與想像之境，讓我們成為靈感國度中的自由人。",
                "categories" => [
                    "Literary arts",
                    "Cultural gift shop",
                    "Designer"
                ],
                "email" => "team@profanumdesign.com"
            ]
        },
        {
            url: "https://www.instagram.com/profanumdesign/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/profanumdesign/posts/133362488115781"
        }
    ];
}

