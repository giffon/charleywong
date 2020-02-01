package charleywong.entities;

class ScarletPrint implements Entity {
    public final id = "scarletprinthk";
    public final name = [
        en => "Scarlet Print"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.scarletprinthk.com"
        },
        {
            url: "https://www.facebook.com/scarletprinthk/",
            meta: [
                "id" => "298176121025079",
                "about" => "我們提供多元化並有質素的印刷品, 並致力推廣香港同人及文創。\n柯式、數碼及專色印刷，客製禮品、商用紀念品、包裝印製至稿件設計都一應俱全。接受少量起訂，滿足不同需要。",
                "categories" => [
                    "Product/service",
                    "Printing service",
                    "Office supplies"
                ],
                "email" => "scarletprinthk@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/scarletprinthk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/scarletprinthk/photos/a.301556100687081/546467542862601/"
        }
    ];
    public final tags:Array<Tag> = [
        printing
    ];
}

