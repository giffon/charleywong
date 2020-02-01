package charleywong.entities;

class Ptfrankhk implements Entity {
    public final id = "ptfrankhk";
    public final name = [
        en => "Frank Choi"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://fitnesspersonaltrainerhongkong.blogspot.hk/2013/09/blog-post_25.html"
        },
        {
            url: "https://www.facebook.com/ptfrankhk/",
            meta: [
                "id" => "161106357429480",
                "about" =>
                "Frank is a Hong Kong based Personal Trainer. He has obtained qualifications through HKU SPACE, NASM, AASFP, Precision Nutrition, and HKCC.",
                "categories" => [
                    "Interest"
                ],
                "email" => "frankiechoicc@gmail.com",
                "tel" => "61232927"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/ptfrankhk/posts/1257537041119734"
        },
        {
            url: "https://www.facebook.com/ptfrankhk/posts/1267475750125863"
        },
        {
            url: "https://www.facebook.com/ptfrankhk/photos/a.344364309103683/1273879279485510/"
        },
        {
            url: "https://www.facebook.com/ptfrankhk/photos/a.344364309103683/1304563373083767/"
        }
    ];
    public final tags:Array<Tag> = [
        fitness,
        shop
    ];
}

