package charleywong.entities;

class Oceanstampsfwte implements Entity {
    public final id = "oceanstampsfwte";
    public final name = [
        zh => "海印",
        en => "Ocean Stamps"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/oceanstampsfwte/",
            meta: [
                "about" => "大海可以把每一塊陸地都連結在一起，可以透過海洋到達每一片的陸地，也把不同土地的人透過大海而重新接上。",
                "categories" => [
                    "Artist",
                    "Just for fun"
                ],
                "email" => "fwteoceanstamps@gmail.com",
                "tel" => "93171303"
            ]
        },
        {
            url: "https://www.instagram.com/oceanstampsfwte/"
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/oceanstampsfwte/posts/2463852713876817"
        },
        {
            url: "https://www.facebook.com/oceanstampsfwte/photos/a.1526180574310707/2339621006299989/"
        }
    ];
}

