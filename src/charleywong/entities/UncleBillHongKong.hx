package charleywong.entities;

class UncleBillHongKong implements Entity {
    public final id = "UncleBillHongKong";
    public final name = [
        zh => "標叔叔專業水電維修工程"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/UncleBillHongKong/",
            meta: [
                "id" => "183977908843661",
                "about" => "燈飾燈具\n家居水電維修\n電器安裝...\n\n\n\n\nSee more",
                "categories" => [
                    "Contractor"
                ],
                "tel" => "69002551"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/UncleBillHongKong/posts/344013299506787"
        }
    ];
    public final tags:Array<Tag> = [
        handyman
    ];
}

