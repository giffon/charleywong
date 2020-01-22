package charleywong.entities;

class Sunkeerestaurant implements Entity {
    public final id = "sunkeerestaurant";
    public final name = [
        zh => "新記芝士麵・新記冰室"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/sunkeerestaurant/",
            meta: [
                "about" => "尖沙咀店：九龍金巴利道16-20號香檳大廈商場13號舖\n時間：下午12時30分-晚上12時 電話：27224555\n荃灣店：荃灣海壩街89-93號荃好景大廈地下D舖\n時間：上午11時-晚上12時 電話：26680810",
                "categories" => [
                    "Fast food restaurant",
                    "Breakfast & brunch restaurant"
                ],
                "addr" => "尖沙咀金巴利道香檳大廈商埸13鋪",
                "area" => "Tsim Sha Tsui",
                "tel" => "27224555",
                "id" => "129580700404863"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/sunkeerestaurant/photos/a.724147820948145/3080104135352490/"
        },
        {
            url: "https://www.facebook.com/sunkeerestaurant/photos/a.724147820948145/3155678877795015/"
        }
    ];
}

