package charleywong.entities;

class KostonLoPhotography implements Entity {
    public final id = "KostonLoPhotography";
    public final name = [
        en => "Koston Lo Photography"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KostonLoPhotography/",
            meta: [
                "about" => "歡迎預約及查詢\n地址: 柴灣工業城第二期\n電話/ Whatsapp: 6278 6345",
                "categories" => [
                    "Photographer"
                ],
                "addr" => "柴灣永泰道70號柴灣工業城第二期",
                "area" => "Hong Kong",
                "email" => "hong191084@icloud.com",
                "id" => "399023356790370"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KostonLoPhotography/posts/3746906962001976"
        }
    ];
    public final tags:Array<Tag> = [];
}

