package charleywong.entities;

class KaKaGaanGaan implements Entity {
    public final id = "KaKaGaanGaan";
    public final name = [
        zh => "加加梘梘"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/KaKaGaanGaan/",
            meta: [
                "id" => "262487554440548",
                "about" => "某日行經一啲市集，發現好多手工梘好靚，有啲仲係透明，作為好奇小寶寶，被顏色所吸引，就產生興趣，為此去圖書館刨書，上網睇片爬文，發現好多手工梘：色彩繽紛因為顏料，透明因為皂",
                "categories" => [
                    "Health/beauty"
                ],
                "email" => "kakagaangaan@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/KaKaGaanGaan/videos/502550437034288/"
        },
        {
            url: "https://www.facebook.com/KaKaGaanGaan/videos/332521914290795/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

