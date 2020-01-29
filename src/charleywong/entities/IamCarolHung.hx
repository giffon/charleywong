package charleywong.entities;

class IamCarolHung implements Entity {
    public final id = "I.am.Carol.Hung";
    public final name = [
        zh => "C孔 l Carol Hung"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/I.am.Carol.Hung/",
            meta: [
                "about" => "從前有個女仔叫做CAROL，\n佢姓孔，佢畫下畫下，完。\n・・・・・・・・・・\n插畫師＋設計師\n忙碌遊人＋HEA旅人",
                "categories" => [
                    "Artist"
                ],
                "email" => "i.am.carol.hung@gmail.com",
                "id" => "828867077138707"
            ]
        },
        {
            url: "https://www.instagram.com/iamcarolhung/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/I.am.Carol.Hung/posts/3840633935961991"
        },
        {
            url: "https://www.facebook.com/I.am.Carol.Hung/photos/a.829140770444671/3580757015283019/"
        }
    ];
    public final tags:Array<Tag> = [];
}

