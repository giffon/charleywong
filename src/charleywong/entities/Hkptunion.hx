package charleywong.entities;

class Hkptunion implements Entity {
    public final id = "hkptunion";
    public final name = [
        zh => "教協（香港教育專業人員協會）"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.hkptu.org/"
        },
        {
            url: "https://www.facebook.com/hkptunion/",
            meta: [
                "id" => "292234587518157",
                "about" => "有關本會的會務，可參閲本會網頁： www.hkptu.org",
                "categories" => [
                    "Trade union",
                    "Education"
                ],
                "addr" => "7/F., Chung Kiu Commercial Building, 51 Shan Tung Street, Mong Kok, Kowloon, Hong Kong",
                "area" => "Mong Kok",
                "email" => "feedback@hkptu.org",
                "tel" => "27807337"
            ]
        },
        {
            url: "https://www.instagram.com/hkptu/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkptunion/photos/a.622869427788003/3341608225914096/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

