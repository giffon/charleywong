package charleywong.entities;

class Richbirdhk implements Entity {
    public final id = "richbirdhk";
    public final name = [
        zh => "發達鳥找換店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.richbirdhk.com"
        },
        {
            url: "https://www.facebook.com/richbirdhk/",
            meta: [
                "id" => "389429764546040",
                "about" => "外貨両替專門丶激安の現金券發售",
                "categories" => [
                    "Currency exchange"
                ],
                "addr" => "福華街177號地舖",
                "area" => "Sham Shui Po",
                "email" => "hello@richbirdhk.com",
                "tel" => "69996148"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/richbirdhk/photos/a.428997013922648/1482390971916575/"
        },
        {
            url: "https://www.facebook.com/richbirdhk/photos/a.428997013922648/1448547778634228/"
        },
        {
            url: "https://www.facebook.com/richbirdhk/photos/a.428997013922648/1438508469638159/"
        },
        {
            url: "https://www.facebook.com/richbirdhk/photos/a.657211427767871/1325340707621603/"
        }
    ];
    public final tags:Array<Tag> = [
        currency,
        shop
    ];
}

