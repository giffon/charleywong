package charleywong.entities;

class Hkcnc implements Entity {
    public final id = "hkcnc";
    public final name = [
        zh => "陳校長免費補習天地"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkcnc.org.hk"
        },
        {
            url: "https://www.facebook.com/hkcnc/",
            meta: [
                "id" => "169864346439711",
                "about" => "【陳校長免費補習天地】於2011年4月成立，是香港政府認可的非牟利慈善機構（註冊編號：91/11019)，為有經濟困難的弱勢學童提供完全因材施教的免費一對一補習服務和學習支援。",
                "categories" => [
                    "Non-profit organisation"
                ],
                "email" => "info@hkcnc.org.hk",
                "tel" => "36210925"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkcnc/posts/2430718203687636"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

