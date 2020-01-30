package charleywong.entities;

class Jiufenteahouse implements Entity {
    public final id = "jiufenteahouse";
    public final name = [
        zh => "九份茶舍"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/jiufenteahouse/",
            meta: [
                "id" => "2074082079568590",
                "about" => "·旺角弼街84號A鋪百寶大廈地下\n·葵芳葵涌廣場2樓2015鋪\n·沙田石門京瑞廣場二期1樓145舖\n·尖沙咀山林道10號A2舖\n·屯門青海圍2號萬寶商場地下5號舗(屯官對面)",
                "categories" => [
                    "Bubble tea shop",
                    "Tea room"
                ],
                "addr" => "旺角弼街84A舖百寶大廈地下(新世紀扶手電梯側)",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jiufenteahouse/photos/a.2090088134634651/2356581027985359/"
        },
        {
            url: "https://www.facebook.com/jiufenteahouse/photos/a.2090088134634651/2405649739745154/"
        },
        {
            url: "https://www.facebook.com/jiufenteahouse/photos/a.2091789221131209/2400201123623349/"
        },
        {
            url: "https://www.facebook.com/jiufenteahouse/posts/2397962430513885"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

