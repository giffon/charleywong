package charleywong.entities;

class Hkgmt implements Entity {
    public final id = "hkgmt";
    public final name = [
        zh => "香港紙膠帶",
        en => "HKMT"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.pinkoi.com/hkmt"
        },
        {
            url: "https://www.facebook.com/hkgmt/",
            meta: [
                "id" => "1027622187330119",
                "about" => "HKMT作者想透過紙膠帶來紀錄我們周邊慢慢失去的獨有文化,包括獨有的交通工具,語言字句等等。客人購買以後可以在不同的物品作裝飾或方便用作手帳記錄之用。",
                "categories" => [
                    "Product/service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkgmt/photos/a.1032865693472435/2645414772217511/"
        },
        {
            url: "https://www.facebook.com/hkgmt/photos/a.1032865693472435/2264953703596955/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

