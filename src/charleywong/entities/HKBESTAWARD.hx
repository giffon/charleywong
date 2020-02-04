package charleywong.entities;

class HKBESTAWARD implements Entity {
    public final id = "HKBESTAWARD";
    public final name = [
        zh => "香港優質獎品-水晶獎座，襟章，旗幟專門店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkbestaward.com"
        },
        {
            url: "https://www.facebook.com/HKBESTAWARD/",
            meta: [
                "id" => "1875509129375178",
                "about" => "香港優質獎品致力為客戶提供水晶獎座、水晶禮品、襟章、金屬獎盃、獎牌、銀碟、金屬證書、盾牌、錦旗及旗幟等。產品種類繁多, 品質優良.",
                "categories" => [
                    "Retail company"
                ],
                "addr" => "九龍九龍灣臨興街21號美羅中心二期5樓510室",
                "area" => "Hong Kong",
                "email" => "info@hkbestaward.com",
                "tel" => "27553313"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKBESTAWARD/photos/a.1895552694037488/2306151426310944/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

