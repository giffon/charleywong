package charleywong.entities;

class TamasiiJewellery implements Entity {
    public final id = "tamasiijewel";
    public final name = [
        en => "Tamasii Jewellery"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tamasiijewel/",
            meta: [
                "about" =>
                "Tamasii Jewellery タマシイジュエリー\n用心打造每件飾物, 訂製您個人專屬首飾\nPut Our HEART and SOUL into Making Each Jewellery\nCustom Make YOUR OWN Jewellery~",
                "categories" => [
                    "Jewellery/watches"
                ],
                "email" => "tamasiijewellery@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tamasiijewel/photos/a.438265276313182/1626887817450916/"
        }
    ];
}

