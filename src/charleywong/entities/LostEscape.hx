package charleywong.entities;

class LostEscape implements Entity {
    public final id = "LostEscape";
    public final name = [
        en => "Lost Escape",
        zh => "迷逃"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.lostescape.com"
        },
        {
            url: "https://www.facebook.com/LostEscape/",
            meta: [
                "id" => "429154707182194",
                "about" => "電話 : 34610284 Whatsapp: 61826646\n地址：旺角彌敦道566-568號僑建大廈8樓568室\n(港鐵油麻地站A2出口與潮流特區中間)\n網址 : http://www.lostescape.com",
                "categories" => [
                    "Party & entertainment service",
                    "Escape game room"
                ],
                "addr" => "No.568 Nathan Road, Yau Ma Tei, Hong Kong",
                "area" => "Yau Ma Tei",
                "email" => "lostescape.hk@gmail.com",
                "tel" => "34610284"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/LostEscape/posts/2504902766274034"
        }
    ];
    public final tags:Array<Tag> = [];
}

