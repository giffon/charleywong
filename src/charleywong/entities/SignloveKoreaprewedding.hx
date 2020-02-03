package charleywong.entities;

class SignloveKoreaprewedding implements Entity {
    public final id = "signlovekoreaprewedding";
    public final name = [
        en => "Signlove Korea prewedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.signlove.com.hk"
        },
        {
            url: "https://www.facebook.com/signlovekoreaprewedding/",
            meta: [
                "id" => "125205657519594",
                "about" => "歡迎電郵查詢我們:\nHK: koreaprewedding@signlove.com.hk\nTW: offshore-tw@signlove.com.hk\nMA: offshore-ma@signlove.com.hk",
                "categories" => [
                    "Wedding planning service",
                    "Makeup artist",
                    "Photography & videography"
                ],
                "email" => "koreaprewedding@signlove.com.hk",
                "tel" => "59737889"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/signlovekoreaprewedding/posts/3012494345457363"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        makeup,
        wedding
    ];
}

