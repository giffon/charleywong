package charleywong.entities;

class HeACamper implements Entity {
    public final id = "heacamper";
    public final name = [
        en => "HeA Camper"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/heacamper/",
            meta: [
                "about" => "HeA Camper係香港本土One-man Band品牌，由設計畫圖、切割打磨、上色上油，至包裝測試，都係由主理人一腳踢係香港包辦，正宗made in HK!",
                "categories" => [
                    "Outdoor and sporting goods company"
                ],
                "email" => "heacamper@gmail.com",
                "id" => "1669826743247095"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/heacamper/photos/a.1885626581667109/2532928643603563/"
        },
        {
            url: "https://www.facebook.com/heacamper/photos/a.1669848199911616/2489855101244251/"
        }
    ];
    public final tags:Array<Tag> = [];
}

