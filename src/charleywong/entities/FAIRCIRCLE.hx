package charleywong.entities;

class FAIRCIRCLE implements Entity {
    public final id = "FAIRCIRCLE";
    public final name = [
        zh => "公平點",
        en => "FAIR CIRCLE"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/FAIRCIRCLE/",
            meta: [
                "about" => "公平點@香港公平貿易動力是一間以推動公平貿易運動為使命的社會企業。 www.hkfairtradepower.com 電話 : 31888064",
                "categories" => [
                    "Community organisation",
                    "Social service"
                ],
                "addr" => "荃灣德士古道120號安泰國際中心 2803 室",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "info@hkfairtradepower.com",
                "tel" => "31888064",
                "id" => "92132596181"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/FAIRCIRCLE/posts/10157811337616182"
        }
    ];
}

