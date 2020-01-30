package charleywong.entities;

class JiangBaoZi implements Entity {
    public final id = "JiangBaoZi";
    public final name = [
        zh => "薑寶仔"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/JiangBaoZi/",
            meta: [
                "about" => "對薑情有獨鍾，專賣天然冷製手工薑皂，薑護膚品，天然薑牙膏，天然驅蟲產品等。全天然植物成分，拒絕化學防腐劑，起泡劑，香精，色素等，只用最簡單包裝，回歸天然，保護地球。",
                "categories" => [
                    "Product/service"
                ],
                "id" => "186874258139330"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/JiangBaoZi/photos/a.206728272820595/1383565038470240/"
        },
        {
            url: "https://www.facebook.com/JiangBaoZi/photos/a.206728272820595/1338672289626182/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

