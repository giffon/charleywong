package charleywong.entities;

class Tdfmyartworks implements Entity {
    public final id = "tdf.myartworks";
    public final name = [
        zh => "TDF 展才基金 「自家創藝」"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/tdf.myartworks/",
            meta: [
                "about" => "「自家創藝」－本土品牌為你貼心打造心愛的布藝。件件人手製作，訂造數量不拘。\n支持小社企。實踐良心消費。推動環保「升級再生」。復興「香港製造」。以消費改變世界，你我做得到！",
                "categories" => [
                    "Shopping & retail"
                ],
                "email" => "talent.tdf@gmail.com",
                "tel" => "27708779"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/tdf.myartworks/posts/2403076526381891"
        },
        {
            url: "https://www.facebook.com/tdf.myartworks/posts/2726878647335009"
        }
    ];
}

