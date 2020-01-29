package charleywong.entities;

class OceanWeddingService implements Entity {
    public final id = "oceanweddingservice";
    public final name = [
        en => "Ocean Wedding Service"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oceanweddingservice/",
            meta: [
                "id" => "148541625234757",
                "about" => "Overseas/Local Pre-Wedding Wedding Day\n\ne-mail:oceanwed＠gmail.com 本地及海外婚紗攝影, 婚禮攝影錄影服務",
                "categories" => [
                    "Wedding planning service",
                    "Photography & videography"
                ],
                "addr" => "Unit F2,5/F,Luk Hop Ind Bldg,Luk hop st.,No.8,Sun Po Kong,Kln",
                "area" => "Kowloon, Hong Kong",
                "email" => "oceanwed@gmail.com",
                "tel" => "23841388"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oceanweddingservice/posts/2591738760915019"
        }
    ];
    public final tags:Array<Tag> = [];
}

