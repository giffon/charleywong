package charleywong.entities;

class Kentleephoto implements Entity {
    public final id = "kentleephoto";
    public final name = [
        en => "Kenneth Lee Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkweddingphoto.com"
        },
        {
            url: "https://www.facebook.com/kentleephoto/",
            meta: [
                "id" => "291230307584202",
                "about" => "曾獲 WPPI、AsiaWPA 及 World Elite Photographers 獎項之香港攝影師。歡迎私訊聯絡，如需拍攝工作報價請 WhatsApp 聯繫 +852 90808451 或電郵到 kentleephoto@gmail.com 查詢。",
                "categories" => [
                    "Photographer"
                ],
                "email" => "kentleephoto@gmail.com",
                "tel" => "90808451"
            ]
        },
        {
            url: "https://www.instagram.com/hkweddingphoto/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kentleephoto/posts/3423417467698788"
        }
    ];
    public final tags:Array<Tag> = [];
}

