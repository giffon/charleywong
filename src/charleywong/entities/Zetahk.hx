package charleywong.entities;

class Zetahk implements Entity {
    public final id = "zetahk";
    public final name = [
        en => "ZETA",
        zh => "科卓"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.zeta.com.hk"
        },
        {
            url: "https://www.facebook.com/zetahk/",
            meta: [
                "id" => "121283961362950",
                "about" => "ZETA 科卓本公司\n主要產品：平板電腦，手提電腦，航拍無人機，智能電動車，專業穩定器，智能攝影器材，手遊電競產品及數碼影音產品。",
                "categories" => [
                    "Computer shop",
                    "Product/service",
                    "Mobile phone shop"
                ],
                "addr" => "九龍深水埗福華街146-152黃金電腦商場地鋪G55號（MTR D2出口直行30米）",
                "area" => "Sham Shui Po",
                "email" => "info@zeta.com.hk",
                "tel" => "26885366"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/zetahk/posts/1326049310886403"
        },
        {
            url: "https://www.facebook.com/zetahk/photos/a.122735201217826/1425861780905155/"
        },
        {
            url: "https://www.facebook.com/zetahk/photos/a.337406943083983/1413742628783737/"
        }
    ];
    public final tags:Array<Tag> = [
        computer,
        photography
    ];
}

