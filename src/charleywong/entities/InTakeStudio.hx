package charleywong.entities;

class InTakeStudio implements Entity {
    public final id = "intakestudio";
    public final name = [
        en => "InTake Studio"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://intakestudiohk.wix.com/main"
        },
        {
            url: "https://www.facebook.com/intakestudio/",
            meta: [
                "id" => "888649587897300",
                "about" => "InTake Studio 鄰近葵芳港鐵站，提供專業攝影、化妝服務及婚紗禮服租借。\n\n查詢: 5940 5955 (What\'s App)",
                "categories" => [
                    "Professional service"
                ],
                "tel" => "59405955"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/intakestudio/photos/a.921374501291475/2420602338035343/"
        }
    ];
    public final tags:Array<Tag> = [
        photographer,
        makeup,
        bridal
    ];
}

