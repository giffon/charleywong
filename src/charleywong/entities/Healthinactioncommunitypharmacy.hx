package charleywong.entities;

class Healthinactioncommunitypharmacy implements Entity {
    public final id = "healthinactioncommunitypharmacy";
    public final name = [
        zh => "醫護行社區藥房",
        en => "Health In Action Community Pharmacy"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hiarx.org.hk"
        },
        {
            url: "https://www.facebook.com/healthinactioncommunitypharmacy/",
            meta: [
                "id" => "102937347713625",
                "about" => "醫護行社區藥房是一所由註冊藥劑師主理的非牟利藥房, 提供配藥服務與藥物諮詢。我們亦會定期進行藥物講座及社區健康教育工作，協助市民善用藥物和提高健康自主及自我管理疾病的能力。",
                "categories" => [
                    "Non-governmental organisation (NGO)"
                ],
                "addr" => "Portion of room 901, Milennium Trade Centre, 54-56 Kwai Cheong Road, Kwai Chung, N.T.",
                "area" => "Hong Kong",
                "email" => "hia@hia.org.hk",
                "tel" => "36129515"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/healthinactioncommunitypharmacy/photos/a.103089537698406/145072153500144/"
        },
        {
            url: "https://www.facebook.com/healthinactioncommunitypharmacy/posts/143030400370986"
        },
        {
            url: "https://www.facebook.com/healthinactioncommunitypharmacy/posts/138172000856826"
        }
    ];
    public final tags:Array<Tag> = [
        pharmacy
    ];
}

