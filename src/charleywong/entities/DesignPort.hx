package charleywong.entities;

class DesignPort implements Entity {
    public final id = "design.port.hk";
    public final name = [
        en => "Design Port"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/design.port.hk/",
            meta: [
                "about" => "退到城市窒息範圍以外的獨立小店，販賣擁有溫度和夢想的本地及海外手作設計、原創品牌和生活小物。\n>JCCAC L103-104 : 1-7pm\n>太古城中心二期 1/F glass house :11-830pm\n>台北赤峰街49巷6號1樓",
                "categories" => [
                    "Arts and crafts shop"
                ],
                "addr" => "Room L103 - L104, 1/F, Jockey Club Creative Arts Centre (JCCAC), 30 Pak Tin Street,",
                "area" => "Shek Kip Mei",
                "email" => "info@d-port.co",
                "tel" => "25769993"
            ]
        },
        {
            url: "https://www.instagram.com/design_port/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/design.port.hk/posts/1039847652890621"
        }
    ];
}

