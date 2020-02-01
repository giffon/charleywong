package charleywong.entities;

class DefianceVoices implements Entity {
    public final id = "defiancevoices";
    public final name = [
        en => "Defiance • Voices"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://defiance-voices-hk.com"
        },
        {
            url: "https://www.facebook.com/defiancevoices/",
            meta: [
                "id" => "100525921473329",
                "about" => "我們即將出版兩本經典精裝書籍，一本是記錄攝影集誰衛我城，另一本是文宣藝術圖冊吶喊。我們希望製作這兩本具收藏價值的書籍，並把全數利潤撥捐慈善用途。",
                "categories" => [
                    "Book series",
                    "Book"
                ],
                "email" => "info@defiance-voices-hk.com"
            ]
        },
        {
            url: "https://www.instagram.com/defiance_voices/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/defiancevoices/posts/116051383254116"
        }
    ];
    public final tags:Array<Tag> = [
        book
    ];
}

