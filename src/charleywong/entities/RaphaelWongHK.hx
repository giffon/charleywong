package charleywong.entities;

class RaphaelWongHK implements Entity {
    public final id = "RaphaelWongHK";
    public final name = [
        zh => "黃浩銘",
        en => "Raphael Wong"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lsd.org.hk/raphael"
        },
        {
            url: "https://www.facebook.com/RaphaelWongHK/",
            meta: [
                "id" => "185083384893893",
                "about" => "個人帳戶（如有訊息請發送至這個）：\nhttps://www.facebook.com/raphaelpyc",
                "categories" => [
                    "Politician"
                ],
                "email" => "raphaelpyc@gmail.com",
                "tel" => "91356824"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/RaphaelWongHK/posts/2291956037539940"
        },
        {
            url: "https://www.facebook.com/RaphaelWongHK/posts/2549128201822721"
        }
    ];
    public final tags:Array<Tag> = [
        publicfigure
    ];
}

