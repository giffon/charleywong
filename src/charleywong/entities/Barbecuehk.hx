package charleywong.entities;

class Barbecuehk implements Entity {
    public final id = "barbecuehk";
    public final name = [
        zh => "巴別橋地道燒烤"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/barbecuehk/",
            meta: [
                "id" => "155919984503151",
                "about" => "香港大坑安庶庇街16號\nNo.16 Ormsby Street, Tai Hang, Hong Kong\n\n喜歡吃地道燒烤的朋友一定要過嚟試下，多謝大家繼續支持！",
                "categories" => [
                    "Barbecue restaurant"
                ],
                "addr" => "No.16 Ormsby Street, Tai Hang",
                "area" => "Hong Kong",
                "email" => "dogchildfamily@yahoo.com.hk",
                "tel" => "51002209"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/barbecuehk/posts/2289460674482394"
        }
    ];
    public final tags:Array<Tag> = [
        food
    ];
}

