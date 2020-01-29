package charleywong.entities;

class Wheres implements Entity {
    public final id = "whereshk";
    public final name = [
        en => "Wheres"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/whereshk/",
            meta: [
                "about" => "Wheres 成立於2015年，本著「推廣設計\n創意文化」及「提倡小店」為經營理念，\n多年內集結不同手作人及品牌設計師，\n希望將有質素的設計產品帶進市場。\nOnline Store: https://sales.where-s.com",
                "categories" => [
                    "Gift shop",
                    "Pop-up shop",
                    "Souvenir shop"
                ],
                "email" => "info@where-s.com",
                "id" => "1723964264491874"
            ]
        },
        {
            url: "https://www.instagram.com/where_s_/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/whereshk/posts/2442797792608514"
        }
    ];
    public final tags:Array<Tag> = [];
}

