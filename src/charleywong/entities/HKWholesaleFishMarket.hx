package charleywong.entities;

class HKWholesaleFishMarket implements Entity {
    public final id = "HKWholesaleFishMarket";
    public final name = [
        zh => "魚市場",
        en => "HKWFM"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://hkwfm.net"
        },
        {
            url: "https://www.facebook.com/HKWholesaleFishMarket/",
            meta: [
                "id" => "464572503604849",
                "about" => "本網為數位熱愛巴士的交通行業從業員所建立的專頁，現專門提供路線時間表查詢、報站聲下載及OMSI補檔，另外亦盡量為大家提供各個範疇的交通資訊。",
                "categories" => [
                    "Community",
                    "Transport system"
                ],
                "email" => "hongkongwfm@gmail.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/HKWholesaleFishMarket/posts/2672463372815740"
        }
    ];
    public final tags:Array<Tag> = [];
}

