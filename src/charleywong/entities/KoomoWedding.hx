package charleywong.entities;

class KoomoWedding implements Entity {
    public final id = "koomowedding";
    public final name = [
        en => "Koomo Wedding"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.koomo-studio.com"
        },
        {
            url: "https://www.facebook.com/koomowedding/",
            meta: [
                "id" => "640015202686981",
                "about" => "Koomo Wedding\n攝影服務！！歡迎電話/whatsapp查詢91550906-Anson :)",
                "categories" => [
                    "Photographer",
                    "Wedding planning service"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/koomowedding/photos/a.640033512685150/2681359141885900/"
        }
    ];
    public final tags:Array<Tag> = [];
}

