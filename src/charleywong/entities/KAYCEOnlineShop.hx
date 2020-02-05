package charleywong.entities;

class KAYCEOnlineShop implements Entity {
    public final id = "kayceonlineshop";
    public final name = [
        en => "KAYCE Online Shop"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/kayce_closet/"
        },
        {
            url: "https://www.facebook.com/kayceonlineshop/",
            meta: [
                "id" => "1455841937970909",
                "about" =>
                "Come & visit your Wardrobe!ALL FROM KOREA 尖沙咀厚福街宏生大廈The Studio 3/F Shop 331 (許留山斜對面)\nInstagram: Kayce_closet\nWhatsapp/Wechat: 9040 7628",
                "categories" => [
                    "Clothing (brand)"
                ],
                "email" => "kaycewardrobe@gmail.com",
                "tel" => "90407628"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/kayceonlineshop/posts/2408136239408136"
        }
    ];
    public final tags:Array<Tag> = [
        clothing
    ];
}

