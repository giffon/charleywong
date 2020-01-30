package charleywong.entities;

class Leathermelmel implements Entity {
    public final id = "leathermelmel";
    public final name = [
        en => "Leather_melmel"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/leathermelmel/",
            meta: [
                "about" => "歡迎訂造及課程查詢\nWhatsapp 96617002\n地址： 新界葵興葵涌工業街10-14號華發工廠大廈後座23樓10-11室B16",
                "categories" => [
                    "Product/service"
                ],
                "id" => "362114390651960"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/leathermelmel/photos/a.407479166115482/1181837908679600/"
        },
        {
            url: "https://www.facebook.com/leathermelmel/photos/a.407479166115482/1179585388904852/"
        }
    ];
    public final tags:Array<Tag> = [
        accessories
    ];
}

