package charleywong.entities;

class VietnamHouseTaiPo implements Entity {
    public final id = "VietnamHouseTaiPo";
    public final name = [
        zh => "大埔越南屋"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/VietnamHouseTaiPo/",
            meta: [
                "id" => "320738038258993",
                "about" => "正宗越南廚師處理, 帶你享用正宗越南菜式",
                "categories" => [
                    "Pho restaurant"
                ],
                "addr" => "大埔南盛街1號地下",
                "area" => "Tai Po Industrial Estate",
                "tel" => "36895177"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/VietnamHouseTaiPo/posts/992993914366732"
        },
        {
            url: "https://www.facebook.com/VietnamHouseTaiPo/posts/918250685174389"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

