package charleywong.entities;

class Dogswork implements Entity {
    public final id = "dogswork";
    public final name = [
        zh => "小久工場",
        en => "DOGSWORK"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/dogswork/",
            meta: [
                "about" => "「小久工場」是一家以香港文化為題材的精品文具店：）\n\n商品類型主要圍繞「生活日常」、「紙卡文具」及「裝飾配件」等⋯⋯",
                "categories" => [
                    "Arts and crafts shop",
                    "Cultural gift shop",
                    "Hobby shop"
                ],
                "email" => "dogsworkhk@gmail.com",
                "tel" => "62335231",
                "id" => "152426158816207"
            ]
        },
        {
            url: "https://www.instagram.com/dogswork/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.instagram.com/p/B5j6yYcgoJJ/"
        },
        {
            url: "https://www.instagram.com/p/BykPtgHgCVL/"
        }
    ];
    public final tags:Array<Tag> = [
        shop
    ];
}

