package charleywong.entities;

class HKPLEx implements Entity {
    public final id = "HKPLEx";
    public final name = [
        zh => "香港膠液所"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKPLEx/",
            meta: [
                "id" => "102494801116303",
                "about" => "不割蓆．不篤灰，不分化。齊上齊落，和勇合一，香港人加油！光復香港 時代革命 五大訴求 缺一不可！",
                "categories" => [
                    "Newsstand",
                    "Community",
                    "Politician"
                ],
                "email" => "hkplexx@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/HKPLEx/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKPLEx/posts/123570215675428"
        },
        {
            url: "https://www.facebook.com/HKPLEx/posts/129524285080021"
        }
    ];
}

