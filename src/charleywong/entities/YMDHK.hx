package charleywong.entities;

class YMDHK implements Entity {
    public final id = "YMD.HK";
    public final name = [
        zh => "源味道生活館"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://jeffysc0.wixsite.com/ymdhk"
        },
        {
            url: "https://www.facebook.com/YMD.HK/",
            meta: [
                "id" => "374134596504729",
                "about" => "喝湯斷食，好健康。",
                "categories" => [
                    "Health & wellness website",
                    "Health Food Shop",
                    "Health/beauty"
                ],
                "email" => "ymd.ltd.hk@gmail.com",
                "tel" => "94583882"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/YMD.HK/posts/562196114365242"
        },
        {
            url: "https://www.facebook.com/YMD.HK/posts/558190341432486"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

