package charleywong.entities;

class VIIDripBrew implements Entity {
    public final id = "7Drip";
    public final name = [
        en => "VII Drip & Brew"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/7Drip/",
            meta: [
                "about" => "VII - Roman numeral 7 - the number of perfection, security, and rest.",
                "categories" => [
                    "Coffee shop"
                ],
                "addr" => "G/f TLP132 , No.132-134 ,Tai Lin Pai Rd.Kwai Chung. N.T",
                "area" => "Hong Kong",
                "email" => "viidripbrew@gmail.com",
                "tel" => "57037134"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/7Drip/posts/776289929522240"
        },
        {
            url: "https://www.facebook.com/7Drip/photos/a.209552009529371/766246387193261/"
        },
        {
            url: "https://www.facebook.com/7Drip/photos/a.209552009529371/669582883526279/"
        }
    ];
}

