package charleywong.entities;

class Diyjason implements Entity {
    public final id = "diyjason";
    public final name = [
        zh => "手作J"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/diyjason/",
            meta: [
                "about" => "人手製作寫實人像及寵物橡皮印章，歡迎Inbox查詢訂造詳情。",
                "categories" => [
                    "Artist",
                    "Product/service"
                ],
                "email" => "hkdiyjason@gmail.com",
                "tel" => "97729759",
                "id" => "351407071564839"
            ]
        },
        {
            url: "https://www.instagram.com/diyjason/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/diyjason/photos/a.352966944742185/2805634956142026/"
        },
        {
            url: "https://www.facebook.com/diyjason/photos/a.352966944742185/2471808466191345/"
        },
        {
            url: "https://www.facebook.com/diyjason/posts/2530872230284968"
        }
    ];
}

