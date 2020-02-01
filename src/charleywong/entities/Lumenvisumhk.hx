package charleywong.entities;

class Lumenvisumhk implements Entity {
    public final id = "lumenvisum.hk";
    public final name = [
        zh => "光影作坊",
        en => "Lumenvisum"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lumenvisum.org"
        },
        {
            url: "https://www.facebook.com/lumenvisum.hk/",
            meta: [
                "id" => "168344549859919",
                "categories" => [
                    "Art gallery",
                    "Book shop"
                ],
                "addr" => "L2-02, JCCAC, 30 Pak Tin Street, Shek Kip Mei, Kowloon",
                "area" => "Hong Kong",
                "email" => "info@lumenvisum.org",
                "tel" => "31779159"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/lumenvisum.hk/photos/a.748882508472784/3143580262336318/"
        },
        {
            url: "https://www.facebook.com/lumenvisum.hk/photos/a.748882508472784/2873444756016538/"
        },
        {
            url: "https://www.facebook.com/lumenvisum.hk/photos/a.810650282296006/2767515016609513/"
        }
    ];
    public final tags:Array<Tag> = [
        artist,
        book,
        shop
    ];
}

