package charleywong.entities;

class DaffieLoMakeup implements Entity {
    public final id = "DaffieLoMakeup";
    public final name = [
        en => "Daffie Lo Makeup"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/DaffieLoMakeup/",
            meta: [
                "id" => "139286476240554",
                "about" => "崇尚自然簡潔,高貴耐看的風格,不會盲目跟隨潮流.Daffie Lo從事化妝行業已超過十年，除了曾為過百新娘主理大日子的妝髮外，亦曾為各大品牌廣告化妝 , 亦曾在香港主要電視台擔任化妝師工作",
                "categories" => [
                    "Makeup artist",
                    "Image consultant"
                ],
                "addr" => "Rise Commercial Building,5-11Granville Circuit,TST",
                "area" => "Hong Kong",
                "email" => "daffie@hotmail.com",
                "tel" => "98218218"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/DaffieLoMakeup/photos/a.153257881510080/1396482113854311/"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        artist,
        wedding,
    ];
}

