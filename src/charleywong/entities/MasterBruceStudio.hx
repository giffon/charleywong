package charleywong.entities;

class MasterBruceStudio implements Entity {
    public final id = "masterbrucestudio";
    public final name = [
        en => "Master Bruce Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/masterbrucestudio/",
            meta: [
                "id" => "1208508645898058",
                "about" => "我們是一家3D打印公司\n集設計,建模,生產,上色,成品等等服務\n而且提供技術支援和查詢服務\n歡迎查詢客服",
                "categories" => [
                    "Business service",
                    "Tools/equipment",
                    "Merchandising service"
                ],
                "email" => "masterbrucestudio@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/masterbrucestudio/posts/2297223027026609"
        }
    ];
    public final tags:Array<Tag> = [
        printing3d
    ];
}

