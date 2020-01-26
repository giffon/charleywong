package charleywong.entities;

class Go2dplus implements Entity {
    public final id = "go2dplus";
    public final name = [
        zh => "幸福宣言",
        en => "Dplus"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.dplus.com.hk"
        },
        {
            url: "https://www.facebook.com/go2dplus/",
            meta: [
                "id" => "147231595302164",
                "about" => "婚紗及婚禮攝影服務, 設有自家影樓, Design Dept, 婚紗部門, 提供一站式的攝影服務\n\nYouTube 頻道:\nhttps://www.youtube.com/DplusHK",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "香港 太子 廣東道1155號 日昇廣場 1302室",
                "area" => "Hong Kong",
                "email" => "info@dplus.com.hk"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/go2dplus/posts/3456551884370102"
        }
    ];
}

