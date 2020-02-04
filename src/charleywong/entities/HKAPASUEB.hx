package charleywong.entities;

class HKAPASUEB implements Entity {
    public final id = "HKAPASUEB";
    public final name = [
        zh => "香港演藝學院學生會編輯委員會",
        en => "HKAPASU Editorial Board"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/HKAPASUEB/",
            meta: [
                "id" => "104534861022873",
                "about" => "香港演藝學院學生會編輯委員會，為本校學生會架構內之屬會和掌有第四權的監察者（學校及學生會）角色，擁有獨立運作的編採自由。",
                "categories" => [
                    "Media/news company"
                ],
                "email" => "apasu_eb@hkapa.edu"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKAPASUEB/posts/124181609058198"
        }
    ];
    public final tags:Array<Tag> = [
        media
    ];
}

