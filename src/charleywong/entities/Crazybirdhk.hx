package charleywong.entities;

class Crazybirdhk implements Entity {
    public final id = "crazybirdhk";
    public final name = [
        zh => "飛鳥找換店"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://crazybirdhk.com"
        },
        {
            url: "https://www.facebook.com/crazybirdhk/",
            meta: [
                "id" => "340416453126863",
                "about" => "- 歡迎WhatsApp 預留及報價 (Tel: 6994 3386)\n- 旅遊數據卡發售\n- 支援支付寶充值及提現\n- 合法持牌金錢服務經營者",
                "categories" => [
                    "Currency exchange"
                ],
                "addr" => "油麻地彌敦道530號現時點商場1樓106 107店",
                "area" => "Hong Kong",
                "tel" => "69943386"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/crazybirdhk/photos/a.341712999663875/734072923761212/"
        }
    ];
    public final tags:Array<Tag> = [
        currency,
        shop
    ];
}

