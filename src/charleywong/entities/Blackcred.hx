package charleywong.entities;

class Blackcred implements Entity {
    public final id = "blackcred";
    public final name = [
        en => "Blackcred"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/blackcred/",
            meta: [
                "about" => "工作室在香港, 歡迎澳門及其他地區訂購\n聯絡人: Cat 電話: (852) 9815-9766 (歡迎whatsapp)\n電郵: blackcred@gmail.com",
                "categories" => [
                    "Product/service"
                ],
                "id" => "207015372254"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/blackcred/photos/a.10150217283432255/10156073428272255/"
        }
    ];
}

