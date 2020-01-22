package charleywong.entities;

class TonsPastry implements Entity {
    public final id = "tonspastry";
    public final name = [
        en => "Ton\'s Pastry"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tonspastry/",
            meta: [
                "about" => "寄居於荃灣的食物工場，偶爾出動的食物流動店",
                "categories" => [
                    "Wholesale bakery",
                    "Cafe"
                ],
                "addr" => "Unit 306, 3/F, Sunwise Industrial Building, 16-26 Wang Wo Tsai Street",
                "area" => "Tsuen Wan, Hong Kong",
                "email" => "tonspastry@gmail.com",
                "tel" => "92452442",
                "id" => "148085158722014"
            ]
        },
        {
            url: "https://www.instagram.com/tonspastry/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tonspastry/photos/a.1052889541574900/1190072134523306/"
        },
        {
            url: "https://www.facebook.com/tonspastry/photos/a.447452428785284/1163003333896853/"
        }
    ];
}

