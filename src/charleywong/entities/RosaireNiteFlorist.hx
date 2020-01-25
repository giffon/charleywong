package charleywong.entities;

class RosaireNiteFlorist implements Entity {
    public final id = "RosaireNite";
    public final name = [
        en => "Rosaire\' Nite Florist"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.instagram.com/rosairenite_gift/"
        },
        {
            url: "https://www.facebook.com/RosaireNite/",
            meta: [
                "id" => "685521011609509",
                "about" =>
                "• FLORIST | HANDMADE | BOUTIQUE •\n• 查詢及訂購產品，請直接inbox專頁或whatapps 5545 1866\n\n工作室地址：葵興葵昌路78號 富都工業大廈 1205室\n(葵興站E出口連接KCC商場步行兩分鐘到達，鄰近地鐵站)",
                "categories" => [
                    "Florist",
                    "Boutique shop",
                    "Gift shop"
                ],
                "addr" => "葵興葵昌路78號富都大廈1205室",
                "area" => "Hong Kong",
                "email" => "rosairenite@gmail.com",
                "tel" => "55451866"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RosaireNite/photos/a.906794496148825/1378462915648645/"
        },
        {
            url: "https://www.facebook.com/RosaireNite/photos/a.696518853843058/1256653541162917/"
        },
        {
            url: "https://www.facebook.com/RosaireNite/photos/a.696518853843058/1256652347829703/"
        }
    ];
}

