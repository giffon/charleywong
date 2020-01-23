package charleywong.entities;

class Hkhooptutor implements Entity {
    public final id = "hkhooptutor";
    public final name = [
        zh => "HOOP 真香港・真補習 時代革命由教育開始"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.hkhoop.com"
        },
        {
            url: "https://www.facebook.com/hkhooptutor/",
            meta: [
                "id" => "107929924015557",
                "about" => "全港最TOP補習導師任你揀，三大精英導師，真．香港學生家長必選平台。涵蓋幻稚園、中小學、IELTS/IB/GSE、大專補習服務。 登記步驟簡單，24小時極速配對，立即登記。",
                "categories" => [
                    "Tutor/teacher"
                ],
                "tel" => "61674712"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/hkhooptutor/photos/a.111628283645721/130752798399936/"
        },
        {
            url: "https://www.facebook.com/hkhooptutor/photos/a.111628283645721/130092545132628/"
        }
    ];
}

