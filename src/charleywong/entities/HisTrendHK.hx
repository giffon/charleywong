package charleywong.entities;

class HisTrendHK implements Entity {
    public final id = "histrend.hk";
    public final name = [
        en => "HisTrend.HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.histrend.hk"
        },
        {
            url: "https://www.facebook.com/histrend.hk/",
            meta: [
                "id" => "362333250635787",
                "about" => "我們只賣好東西",
                "categories" => [
                    "Shopping & retail",
                    "Product/service",
                    "Art"
                ],
                "addr" => "Cheung Fat Factory Buildings, Cheung Sha Wan",
                "area" => "Hong Kong",
                "email" => "histrend.hk@gmail.com",
                "tel" => "93478534"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/histrend.hk/posts/1263120510557052"
        },
        {
            url: "https://www.facebook.com/histrend.hk/posts/1160402974162140"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

