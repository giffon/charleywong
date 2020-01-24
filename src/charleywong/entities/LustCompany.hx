package charleywong.entities;

class LustCompany implements Entity {
    public final id = "HKLUST148";
    public final name = [
        en => "Lust Company"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hklust148.com"
        },
        {
            url: "https://www.facebook.com/HKLUST148/",
            meta: [
                "id" => "1525067881134445",
                "about" => "香港情趣用品專門店\n\n更新產品的存貨...\n\n\n\nSee More",
                "categories" => [
                    "Retail Company"
                ],
                "addr" => "觀塘成業街怡生中心C座4樓18室",
                "area" => "Hong Kong",
                "email" => "lust.hk.co@gmail.com",
                "tel" => "95346696"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKLUST148/posts/2170117459962814"
        },
        {
            url: "https://www.facebook.com/HKLUST148/photos/a.1528039890837244/2060999124207982/"
        }
    ];
}

