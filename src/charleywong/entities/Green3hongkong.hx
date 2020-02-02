package charleywong.entities;

class Green3hongkong implements Entity {
    public final id = "green3hongkong";
    public final name = [
        en => "Green 3 HK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.green3.com.hk"
        },
        {
            url: "https://www.facebook.com/green3hongkong/",
            meta: [
                "id" => "680449238828455",
                "about" => "你有沒有發現家裡洗衣機洗完衣服還是會有黑色片片污垢黏著衣服,衣服有霉味和膠邊發霉等等,以上全都是提示著你家裡洗衣機可能內藏大量污垢和細菌,需要清潔消毒了。",
                "categories" => [
                    "Environmental service",
                    "Cleaning service"
                ],
                "addr" => "沙田大圍成運路1-7號交通城大廈9樓14室",
                "area" => "Hong Kong",
                "email" => "ggg@green3.com.hk",
                "tel" => "53033645"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/green3hongkong/posts/1373583562848349"
        },
        {
            url: "https://www.facebook.com/green3hongkong/photos/a.816559075217470/1387791898094182/"
        },
        {
            url: "https://www.facebook.com/green3hongkong/posts/1440462696160435"
        }
    ];
    public final tags:Array<Tag> = [
        handyman
    ];
}

