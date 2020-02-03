package charleywong.entities;

class HKCTU implements Entity {
    public final id = "HKCTU";
    public final name = [
        zh => "職工盟",
        en => "HKCTU"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hkctu.org.hk"
        },
        {
            url: "https://www.facebook.com/HKCTU/",
            meta: [
                "id" => "169276086446006",
                "about" => "香港職工會聯盟﹝簡稱職工盟﹞成立於1990年7月，至今已有93個屬會，代表超過19萬名會員。職工盟是一個完全自主的工會聯合組織，不依附權勢，獨立於任何政權、財團。",
                "categories" => [
                    "Trade union",
                    "Non-profit organisation"
                ],
                "addr" => "油麻地彌敦道557-559號永旺行7樓及19樓",
                "area" => "Yau Ma Tei",
                "email" => "hkctu@hkctu.org.hk",
                "tel" => "27708668"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKCTU/photos/a.176347809072167/847744015265873/"
        },
        {
            url: "https://www.facebook.com/HKCTU/posts/3477805892259659"
        },
        {
            url: "https://www.facebook.com/HKCTU/photos/a.557772130929731/3096000373773548/"
        }
    ];
    public final tags:Array<Tag> = [
        organization
    ];
}

