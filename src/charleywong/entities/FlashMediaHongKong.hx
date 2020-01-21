package charleywong.entities;

class FlashMediaHongKong implements Entity {
    public final id = "flashmediahk";
    public final name = [
        en => "Flash Media Hong Kong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/flashmediahk/",
            meta: [
                "about" => "About:\n\nFlash Media Hong Kong 是由數名獨立攝影師及記者於2019 年創立，以多媒體創作及資訊報導香港社會議題和都市故事。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "theflashmediahk@gmail.com"
            ]
        },
        {
            url: "https://www.instagram.com/theflashmediahk/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/flashmediahk/photos/a.115338826611457/115348026610537/"
        }
    ];
}

