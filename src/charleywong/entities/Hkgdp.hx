package charleywong.entities;

class Hkgdp implements Entity {
    public final id = "hkgdp";
    public final name = [
        zh => "香港民主宣傳小組"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://hkgdp.wordpress.com"
        },
        {
            url: "https://www.facebook.com/hkgdp/",
            meta: [
                "id" => "726087490815646",
                "about" => "香港民主宣傳小組（香港民宣）- 民間自發小組\n立足社區，通過對話求共識，增了解，化分歧；宣揚民主意識，建構公民社會。\n歡迎同路人加入：http://goo.gl/forms/SpRlvFswXZ",
                "categories" => [
                    "Community organisation"
                ],
                "email" => "hkgdp14@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkgdp/posts/2571658982925145"
        }
    ];
    public final tags:Array<Tag> = [
        media,
        organization
    ];
}

