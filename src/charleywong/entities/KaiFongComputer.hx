package charleywong.entities;

class KaiFongComputer implements Entity {
    public final id = "KaiFongComputer";
    public final name = [
        zh => "佳坊電腦"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KaiFongComputer/",
            meta: [
                "about" => "***持商業登記證商户***\n電腦砌機，電競主機，打機電腦，上門維修電腦,各類電腦配件買賣,高價回收電腦/手提電腦，太多不能盡錄...\n**歡迎查詢**另外有舊電腦Trade新機服務**\nWhatsApp查詢：96447597",
                "categories" => [
                    "Computer company",
                    "Computer & Internet website",
                    "Computer repair service"
                ],
                "addr" => "葵涌大連排道42-46號貴盛工業大廈二期3樓3G惠耀商業366室(敬請預約)",
                "area" => "Kwai Chung",
                "email" => "kaifongcomputer@gmail.com",
                "tel" => "96447597"
            ]
        },
        {
            url: "https://www.instagram.com/kaifongcomputer/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KaiFongComputer/photos/a.536031200171511/785742591867036/"
        },
        {
            url: "https://www.facebook.com/KaiFongComputer/photos/a.536031200171511/797698087338153/"
        }
    ];
}

