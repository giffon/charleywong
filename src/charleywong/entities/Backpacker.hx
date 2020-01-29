package charleywong.entities;

class Backpacker implements Entity {
    public final id = "backpacker.outdoor.hk";
    public final name = [
        en => "Backpacker"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/backpacker.outdoor.hk/",
            meta: [
                "about" => "露營裝備。登山服飾。專業服務。價廉物美\n嚴選各國優質品牌，近萬款貨品選擇，專業技術指導\n#背囊 #行山鞋 #防水褸 #戶外服飾 #跑山裝備 #防水袋 #蒙古包 #睡袋充氣蓆 #煮食爐具 #戶外小物",
                "categories" => [
                    "Outdoor equipment shop",
                    "Shopping centre"
                ],
                "addr" => "香港旺角山東街47-51號中僑商業大廈16樓4號舖 (瓊華中心旁)",
                "area" => "Mong Kok",
                "email" => "info@backpacker-outdoor.com.hk",
                "tel" => "66757254",
                "id" => "1388737378012936"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/backpacker.outdoor.hk/photos/a.1403003173253023/2569138806639448/"
        },
        {
            url: "https://www.facebook.com/backpacker.outdoor.hk/photos/a.1403003173253023/2475294012690595/"
        },
        {
            url: "https://www.facebook.com/backpacker.outdoor.hk/photos/a.1403003173253023/2464338837119446/"
        }
    ];
    public final tags:Array<Tag> = [
        shop,
        accessories
    ];
}

