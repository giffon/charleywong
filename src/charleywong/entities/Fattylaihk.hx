package charleywong.entities;

class Fattylaihk implements Entity {
    public final id = "fattylai.hk";
    public final name = [
        zh => "肥仔黎"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/fattylai.hk/",
            meta: [
                "id" => "103517744361601",
                "about" => "營業時間：下午1時 至晚上8時\n鹽水雞供應時間：下午1時 及 下午6時 兩個時段",
                "categories" => [
                    "Restaurant"
                ],
                "addr" => "元朗鳳琴街15-21號鴻運中心地下12號舖",
                "area" => "Hong Kong"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/fattylai.hk/photos/a.113001263413249/168563994523642/"
        },
        {
            url: "https://www.facebook.com/fattylai.hk/photos/a.113001263413249/147139929999382/"
        }
    ];
    public final tags:Array<Tag> = [];
}

