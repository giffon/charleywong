package charleywong.entities;

class Hkaquagroup implements Entity {
    public final id = "hkaquagroup";
    public final name = [
        zh => "香港淨水"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkagi.com"
        },
        {
            url: "https://www.facebook.com/hkaquagroup/",
            meta: [
                "id" => "785864464877937",
                "about" => "致力將潔淨食水帶到每一個香港人的家中",
                "categories" => [
                    "Company"
                ],
                "email" => "info@hkagi.com",
                "tel" => "31882757"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkaquagroup/posts/1556220841175625"
        },
        {
            url: "https://www.facebook.com/hkaquagroup/posts/1625503394247369"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

