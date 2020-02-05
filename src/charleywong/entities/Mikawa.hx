package charleywong.entities;

class Mikawa implements Entity {
    public final id = "mikawaint";
    public final name = [
        en => "Mikawa"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.mikawaint.com"
        },
        {
            url: "https://www.facebook.com/mikawaint/",
            meta: [
                "id" => "581069768621246",
                "about" => "三川(國際)設計工程有限公司,是一間專業的室內設計工程公司,為客戶提供專業及優質的室內設計裝修服務.(完成裝修後承諾跟設計3D達9成以上為原則)",
                "categories" => [
                    "Company"
                ],
                "addr" => "Room11,9/F,Kenning Industrial Building,Wang Hoi Road,Kowloon Bay",
                "area" => "Hong Kong",
                "email" => "kobe.ko@mikawaint.com",
                "tel" => "34171217"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mikawaint/posts/2628517463876456"
        },
        {
            url: "https://www.facebook.com/mikawaint/photos/a.1344014662326749/2432240916837446/"
        },
        {
            url: "https://www.facebook.com/mikawaint/photos/a.2345928895468649/2345928862135319/"
        }
    ];
    public final tags:Array<Tag> = [
        interior
    ];
}

