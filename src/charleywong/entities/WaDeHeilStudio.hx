package charleywong.entities;

class WaDeHeilStudio implements Entity {
    public final id = "WaDeHeilStudio";
    public final name = [
        zh => "地獄工房",
        en => "Wa De Heil Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://wadeheil.com"
        },
        {
            url: "https://www.facebook.com/WaDeHeilStudio/",
            meta: [
                "id" => "411897242715369",
                "about" => "來自地獄的各行各業\n歡歡樂樂地說著來自地獄的笑話\nBTW，其實我們是媒體創作的工作室\n你說沒有營業時間？對，我們沒有固定的營業時間",
                "categories" => [
                    "Blogger",
                    "Games/toys",
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/WaDeHeilStudio/posts/576940116211080"
        }
    ];
    public final tags:Array<Tag> = [];
}

