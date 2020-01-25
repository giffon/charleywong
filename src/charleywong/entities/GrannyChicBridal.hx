package charleywong.entities;

class GrannyChicBridal implements Entity {
    public final id = "grannychicbridal";
    public final name = [
        en => "Granny Chic Bridal"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.grannychicbridal.com"
        },
        {
            url: "https://www.facebook.com/grannychicbridal/",
            meta: [
                "id" => "1831626906877548",
                "about" => "Granny Chic 以時尚、年輕、簡約為設計基礎 ，以「歷久常新」為理念，顛覆傳統婚紗店概念。",
                "categories" => [
                    "Product/service",
                    "Bridal shop",
                    "Wedding planning service"
                ],
                "tel" => "62291024"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/grannychicbridal/posts/3375372382502985"
        }
    ];
}

