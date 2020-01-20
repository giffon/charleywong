package charleywong.entities;

class Mizuland implements Entity {
    public final id = "mizulands";
    public final name = [
        en => "Mizuland"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/mizulands/",
            meta: [
                "about" => "某天對刺繡的印象被癲覆了，鴛鴦牡丹以外的世界大得很。\n經過各種掙扎後嘗試拿起針線，不知不覺就陷進去。\n手鞠與刺繡。\n\n有興趣可以去Instagram： mizuland 看看！",
                "categories" => [
                    "Company"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/mizulands/photos/a.149481705199768/1566481983499726/"
        }
    ];
}

