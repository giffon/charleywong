package charleywong.entities;

class NailCarnival implements Entity {
    public final id = "Nail.Carnival";
    public final name = [
        en => "Nail Carnival"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "https://www.facebook.com/Nail.Carnival/",
            meta: [
                "id" => "149203778453472",
                "about" => "Nail Carnival 提供專業美甲 , 歡迎查詢 或 致電 : 6114 4791 Rainbow\n地址 : 深水埗西九龍中心5樓47，48號",
                "categories" => [
                    "Beauty, cosmetic & personal care",
                    "Community"
                ]
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/Nail.Carnival/photos/a.151175611589622/3422188724488278/"
        },
        {
            url: "https://www.facebook.com/Nail.Carnival/posts/3627448213962327"
        }
    ];
    public final tags:Array<Tag> = [
        makeup,
        shop
    ];
}

